#!/usr/bin/python3
""" 1-top_ten

    Queries the Reddit API and prints the titles of the first 10
    hot posts listed for a given subreddit.
"""
import requests


def top_ten(subreddit):
    """ Allow us generate the hot titles
    """
    userAgent = {'User-agent': 'bhalut'}
    url = "https://www.reddit.com/r/{}/hot.json?limit=10".format(subreddit)
    request = requests.get(url, headers=userAgent)
    data = request.json()

    if request.status_code != 404:
        children = data['data']['children']

        for i in range(len(children)):
            print("{:}".format(children[i]['data']['title']))
    else:
        print("{:}".format("None"))
