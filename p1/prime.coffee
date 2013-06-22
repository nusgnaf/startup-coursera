fs=require 'fs'

sieve = (upperbound) ->
  allprimes = []
  splitter = Math.floor(Math.sqrt(upperbound))
  if splitter < 5
    smallPrimes =  [2,3]
  else
    smallPrimes = sieve(splitter)
  for num in [5..upperbound]
    k = 0
    for c in smallPrimes
      if (num % c  ==0)
        break
      ++k
    if (k==smallPrimes.length)
      allprimes.push(num)
  return smallPrimes.concat(allprimes)
fn = "allprimes.txt"
fs.writeFileSync(fn, sieve(100))
#console.log(sieve(500))


