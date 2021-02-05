#!/usr/bin/python3
""" 0-subs

    Queries the Reddit API and returns the number of subscribers
    (not active users, total subscribers) for a given subreddit.
"""
import requests


def number_of_subscribers(subreddit):
    """ Allow generate the count of suscribers
    """
    userAgent = {'User-agent': 'bhalut'}
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    request = requests.get(url, headers=userAgent)
    data = request.json()

    if request.status_code != 404:
        return(data["data"]["subscribers"])
    return (0)
