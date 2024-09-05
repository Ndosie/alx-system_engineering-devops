#!/usr/bin/python3
"""Function that queries Reddit API and returns number of subscribers"""
import requests


def number_of_subscribers(subreddit):
    """Returns numbers of redit subscribers"""
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {
        "User-Agent": "ubuntu_20.04:0x16.api.advanced:v1.0.0"
    }
    res = requests.get(url, headers=headers, allow_redirects=False)
    if res.status_code == 404:
        return 0
    results = res.json().get("data")
    return results.get("subscribers")
