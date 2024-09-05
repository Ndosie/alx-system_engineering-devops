#!/usr/bin/python3
"""Function that queries Reddit API and returns number of subscribers"""
import requests


def number_of_subscribers(subreddit):
    """Returns numbers of redit subscribers"""
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {
        "User-Agent": "linux:0x16.api_advanced:v1.0.0 (by /u/endosi24)"
    }
    response = requests.get(url, headers=headers)
    if response.status_code != 200:
        return 0
    results = response.json().get("data")
    return results.get("subscribers")
