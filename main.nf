#!/usr/bin/env nextflow


params.outDir = false


params.design = './design.csv'



process test {
    echo true
    label 'minor'
    container 'ubuntu:20.04'

    publishDir "${params.outDir}"
	
    input:
    path(test) from Channel.fromPath(params.design)
    
    output:
    path("*.txt")

    """
    cat ${test} | tee test.txt
    """
}
