rule render_dot:
    input:
        dot='research-workflow.dot'
    output:
        png='img/research-workflow.png'
    shell:
        """
        dot -T png {input.dot} -o {output.png}
        """

rule trim_stool:
    input:
        png='img/1F4A9_color.png'
    output:
        png='img/stool_crop.png'
    shell:
        """
        magick {input.png} -trim {output.png}
        """
