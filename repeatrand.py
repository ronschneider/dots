#!/usr/bin/python

import hashlib
import os

def rand_seed():
    return os.urandom(16).hex()


class repeatable_random(object):
    def __init__(self, seed = ""):
        if (seed == ""):
            seed = rand_seed()
        self.hash = seed.encode('utf-8')
    
    def __iter__(self):
        return self
    
    def __next__(self):
        yield self.next()
        
    def next(self):
        m = hashlib.md5()
        m.update(self.hash)
        self.hash = m.digest()
        for c in self.hash:
            return c

    def rand_int(self, upper_bound):
        a = self.next()
        b = self.next()
        
        return (a + b * 256) % upper_bound
        
    def rand_card(self):
        return self.rand_int(52)

