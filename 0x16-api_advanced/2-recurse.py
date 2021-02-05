#!/usr/bin/python3
""" 2-recurse

    Queries the Reddit API and returns a list
    containing the titles of all hot articles for a given subreddit.
"""
import requests


def recurse(subreddit, hot_list=[], after=""):
    """ Allow us generate a list with the titles
    """
    userAgent = {'User-agent': 'bhalut'}
    if after == "":
        url = "https://www.reddit.com/r/{}/hot.json?after=".format(subreddit)
    else:
        url = "https://www.reddit.com/r/{}/hot.json?after={}".format(
            subreddit, after)
    request = requests.get(url, headers=userAgent)
    data = request.json()

    if request.status_code != 404:
        children = data['data']['children']

        for i in range(len(children)):
            hot_list.append(children[i]['data']['title'])
        after = data['data']['after']

        if after is None:
            return hot_list

        recurse(subreddit, hot_list, after)
        return hot_list
    return None
