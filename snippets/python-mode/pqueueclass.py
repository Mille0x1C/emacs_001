# -*- mode: snippet -*-
# name: pqueueclass
# key: pqueueclass
# --
class PQueue (Queue):
    '''Variant of Queue that retrieves open entries in priority order (lowest first).
    Entries are typically tuples of the form:  (priority number, data).
    '''
    def _init(self,maxsize=0):
        self.queue = []

    def set(self,x_queue):
        self.queue=x_queue
    def _qsize(self):
        return len(self.queue)

    def _put(self, item):
        heappush(self.queue, item)

    def _get(self):
        return heappop(self.queue)
