# PTSD Explorer DPU Package

This R package contains DPU's that are used by the PTSD Explorer tool.

The DPUs are written in R and deployed through the OpenCPU framework. For more information about the API, visit www.opencpu.org.

## Examples

### bin

	http://public.opencpu.org/R/call/dpu.ptsd/bin/json?x=[3,4,6,7,5,3,4,5,6,4,2,3,5,4,7,6,4,2,9,5,2,3,5,7,5,3,4,5,7,1,3,4,2,3,4,5,2]
	http://public.opencpu.org/R/call/dpu.ptsd/bin/json?x=[3,4,6,7,5,3,4,5,6,4,2,3,5,4,7,6,4,2,9,5,2,3,5,7,5,3,4,5,7,1,3,4,2,3,4,5,2]&n=5
	http://public.opencpu.org/R/call/dpu.ptsd/bin/json?x=[3,4,6,7,5,3,4,5,6,4,2,3,5,4,7,6,4,2,9,5,2,3,5,7,5,3,4,5,7,1,3,4,2,3,4,5,2]&width=1

### correlation

	http://public.opencpu.org/R/call/dpu.ptsd/correlation/json?x=[4,3,5,3,2,5,2]&y=[7,4,5,4,3,5,3]

### linear

	http://public.opencpu.org/R/call/dpu.ptsd/linear/json?x=[4,3,5,3,2,5,2]&y=[7,4,5,4,3,5,3]

### quantiles

	http://public.opencpu.org/R/call/dpu.ptsd/quantiles/json?x=[3,4,6,7,5,3,4,5,6,4,2,3,5,4]
	http://public.opencpu.org/R/call/dpu.ptsd/quantiles/json?x=[3,4,6,7,5,3,4,5,6,4,2,3,5,4]&probs=[0.05, 0.95]

### smooth

	http://public.opencpu.org/R/call/dpu.ptsd/smooth/json?x=[4,3,5,3,2,5,2]&y=[7,4,5,4,3,5,3]
	http://public.opencpu.org/R/call/dpu.ptsd/smooth/json?x=[4,3,5,3,2,5,2]&y=[7,4,5,4,3,5,3]&n=10
	http://public.opencpu.org/R/call/dpu.ptsd/smooth/json?x=[4,3,5,3,2,5,2]&y=[7,4,5,4,3,5,3]&n=0