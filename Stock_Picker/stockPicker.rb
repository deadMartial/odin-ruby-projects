def stock_picker(a)
  s=a.length-1;
  int=0
  arr=[]
  for i in 0..s do
    for j in i..s do
      if (a[j]-a[i]) > int
        arr=[i,j]
        int =a[j]-a[i]
      end
    end
  end
  arr
end

def max(a,b)
  if a>b
    a
  else 
    b
  end
end

p stock_picker([17,3,6,9,15,8,6,1,10]) 