# PTSD Explorer DPU Package

This R package contains DPU's that are used by the PTSD Explorer tool. The DPUs are written in R and deployed through the OpenCPU framework. For more information about the API, visit www.opencpu.org.

## Calling the API

OpenCPU allows POST request content types `application/x-www-form-urlencoded`, `multipart/form-data` or `application/json`. For example:

	curl https://public.opencpu.org/ocpu/library/dpu.mobility/R/geodistance/json \
	  -d 'long=[-74.0064,-118.2430,-74.0064]&lat=[40.7142,34.0522,40.7142]'

This is equivalent to:

	curl https://public.opencpu.org/ocpu/library/dpu.mobility/R/geodistance/json \
	 -H "Content-Type: application/json" -d '{"long":[-74.0064,-118.2430,-74.0064],"lat":[40.7142,34.0522,40.7142]}'

## Examples

### bin

	curl https://public.opencpu.org/ocpu/library/dpu.ptsd/R/bin/json -d 'x=[3,4,6,7,5,3,4,5,6,4,2,3,5,4,7,6,4,2,9,5,2,3,5,7,5,3,4,5,7,1,3,4,2,3,4,5,2]'
	curl https://public.opencpu.org/ocpu/library/dpu.ptsd/R/bin/json -d 'x=[3,4,6,7,5,3,4,5,6,4,2,3,5,4,7,6,4,2,9,5,2,3,5,7,5,3,4,5,7,1,3,4,2,3,4,5,2]&n=5'
	curl https://public.opencpu.org/ocpu/library/dpu.ptsd/R/bin/json -d 'x=[3,4,6,7,5,3,4,5,6,4,2,3,5,4,7,6,4,2,9,5,2,3,5,7,5,3,4,5,7,1,3,4,2,3,4,5,2]&width=1'

### correlation

	curl https://public.opencpu.org/ocpu/library/dpu.ptsd/R/correlation/json -d 'x=[4,3,5,3,2,5,2]&y=[7,4,5,4,3,5,3]'

### linear

	curl https://public.opencpu.org/ocpu/library/dpu.ptsd/R/linear/json -d 'x=[4,3,5,3,2,5,2]&y=[7,4,5,4,3,5,3]'

### quantiles

	curl https://public.opencpu.org/ocpu/library/dpu.ptsd/R/quantiles/json -d 'x=[3,4,6,7,5,3,4,5,6,4,2,3,5,4]'
	curl https://public.opencpu.org/ocpu/library/dpu.ptsd/R/quantiles/json -d 'x=[3,4,6,7,5,3,4,5,6,4,2,3,5,4]&probs=[0.05, 0.95]'

### smooth

	curl https://public.opencpu.org/ocpu/library/dpu.ptsd/R/smooth/json -d 'x=[4,3,5,3,2,5,2]&y=[7,4,5,4,3,5,3]'
	curl https://public.opencpu.org/ocpu/library/dpu.ptsd/R/smooth/json -d 'x=[4,3,5,3,2,5,2]&y=[7,4,5,4,3,5,3]&n=10'
	curl https://public.opencpu.org/ocpu/library/dpu.ptsd/R/smooth/json -d 'x=[4,3,5,3,2,5,2]&y=[7,4,5,4,3,5,3]&n=0'
