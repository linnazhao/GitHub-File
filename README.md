# GitHub-File
Codes
Interpolate the function f(x) = sin(2x), x 2 [−1, 1] on n + 1 Chebyshev nodes t0, t1, · · · , tn.The
observation on each node is polluted by a random error ~ N(0, 1e − 4), 
Plot the interpolating polynomial ˜ fn(x) and the function f(x) on in the same graph and use
legend to distinguish them. Do this for n = 5, 10, 15, 20 and group these four graphs in a single figure
with subplot.

Use a for loop to calculate the error
max=|f(x) − ˜ fn(x)|by using the infErr.m file on Canvas for n = 10, 20, 30, 40, · · · , 100 and save them in the vector errors.
Generate the log plot for errors

