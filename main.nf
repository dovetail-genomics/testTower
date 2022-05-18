#!/usr/bin/env nextflow


params.outDir = false


println projectDir

/*
process cutadapt {
    label 'minor'
    container 'ubuntu:20.04'

    publishDir "${params.outDir}"
	
    input:
    val(test) from Channel.from('test')
    
    output:
    path("*.txt")

    """
    touch ${test}.txt
    """
}
*/
