class GaussianRational:
    def __init__(self, x, y):
        self.x = QQ(x)
        self.y = QQ(y)
    def __repr__(self):
        return "%s + %s*i"%(self.x,self.y)
    def __add__(self, right):
    """ add a docstring"""
        return GaussianRational(self.x+right.x, self.y+right.y)
    def __sub__(self, right):
        return GaussianRational(self.x-right.x, self.y-right.y)
    def __div__(self,right):
        """
        add a new function
        """
        divisor = right.x * right.x + right.y * right.y
        resultx = self.x * right.x + self.y * right.y
        resulty = - self.x * right.y + self.y * right.x
        result = GaussianRational(float(resultx)/divisor, float(resulty)/divisor)
        return result
