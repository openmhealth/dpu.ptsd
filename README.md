# PTSD Explorer DPU Package

This R package contains DPU's that are used by the PTSD Explorer tool.

The DPUs are written in R and deployed through the OpenCPU framework. For more information about the API, visit www.opencpu.org.

## Examples

### bin

	http://ri.omh.io/R/call/dpu.ptsd/bin/json?x=[3,4,6,7,5,3,4,5,6,4,2,3,5,4,7,6,4,2,9,5,2,3,5,7,5,3,4,5,7,1,3,4,2,3,4,5,2]
	http://ri.omh.io/R/call/dpu.ptsd/bin/json?x=[3,4,6,7,5,3,4,5,6,4,2,3,5,4,7,6,4,2,9,5,2,3,5,7,5,3,4,5,7,1,3,4,2,3,4,5,2]&n=5
	http://ri.omh.io/R/call/dpu.ptsd/bin/json?x=[3,4,6,7,5,3,4,5,6,4,2,3,5,4,7,6,4,2,9,5,2,3,5,7,5,3,4,5,7,1,3,4,2,3,4,5,2]&width=1

### correlation

	http://ri.omh.io/R/call/dpu.ptsd/correlation/json?x=[4,3,5,3,2,5,2]&y=[7,4,5,4,3,5,3]

### linear

	http://ri.omh.io/R/call/dpu.ptsd/linear/json?x=[4,3,5,3,2,5,2]&y=[7,4,5,4,3,5,3]

### quantiles

	http://ri.omh.io/R/call/dpu.ptsd/quantiles/json?x=[3,4,6,7,5,3,4,5,6,4,2,3,5,4]
	http://ri.omh.io/R/call/dpu.ptsd/quantiles/json?x=[3,4,6,7,5,3,4,5,6,4,2,3,5,4]&probs=[0.05, 0.95]

### smooth

	http://ri.omh.io/R/call/dpu.ptsd/smooth/json?x=[4,3,5,3,2,5,2]&y=[7,4,5,4,3,5,3]
	http://ri.omh.io/R/call/dpu.ptsd/smooth/json?x=[4,3,5,3,2,5,2]&y=[7,4,5,4,3,5,3]&n=10
	http://ri.omh.io/R/call/dpu.ptsd/smooth/json?x=[4,3,5,3,2,5,2]&y=[7,4,5,4,3,5,3]&n=0