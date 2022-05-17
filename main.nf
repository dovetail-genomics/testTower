#!/usr/bin/env nextflow

process cutadapt {
    label 'minor'
    container 'ubuntu:20.04'

    //publishDir "${params.outDir}"
	
    input:
    tuple id, path(R1), path(R2) from design.fqs.unique()
    
    output:
    path("*.txt")

    """
    touch ${test}.txt
    """
}

