X-GM-THRID: 6883028084998537216
X-Received: by 2002:ad4:4391:: with SMTP id s17mr30238656qvr.60.1602597241249;
        Tue, 13 Oct 2020 06:54:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:7f1:: with SMTP id k17ls10010714qkk.10.gmail; Tue,
 13 Oct 2020 06:53:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyaQTC8Hw8ql/SZODnvbBxIrXpla/FecqEt5NAlIEMiDvOFAGHSA1i98gERpL7e8sxP4uY4
X-Received: by 2002:a05:620a:95e:: with SMTP id w30mr5521qkw.403.1602597239390;
        Tue, 13 Oct 2020 06:53:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602597239; cv=none;
        d=google.com; s=arc-20160816;
        b=Fo5RKKsstVzMa3K/ryH/98FpIjDjbOJODX5pU5ucaom8t0dHlLtq4fS5tP8lpCzk5p
         I3d31WIqo/wLstYnX10T5vtHXDNHnhYCDxuZHA0yMsjp0GIpA9bklJ3bTaZLAAQZ12Hi
         hfyKUfCxvT1BK5MCnfasowhGLicgSaQ+vdMBHfvMTKafAlp+FkjUd7oy+p4rNW1p6TKQ
         n/zjJ4/HQ+uVnk1PzJo8Mp/XtrlzIx9JpZ/P4biA3kfInA/QaEbyse67SC+r1crNHa0k
         riNtXPTd2EiEtusImhedPyuqahMk+DNtwNa5ShjQ9F7xCV13mRLK9w5wT9Er3687AKbj
         iFYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=K19/+JSZ2r+8iJJOJLAXJ88LLyzQXhA3Mp6PkzDiPE0=;
        b=X42ymSRdIKxuhQva+P5f/VFfRdTU5aOFzUJKwqBgzQPpxpykwrjTg+gGSzCqcOTaCR
         bxB+jwvAu/nEdtDSJioFC5zxvNiUqTo6V1NDwFnZ/siueh21K8g+bo5YKoo5pIeF5BQH
         qnzI4WRErYP9yaRrZCMCckPlcJtV0FiaOj6dCMWw9N873KgIhssn1fsV00xSpeKiI7Zz
         wmGU/SEDesjQa4psMPFWLzupYoYDpI6SRIerfwbjUj3f05pjT+sT6QJd+5ZL0mePTTih
         S5rm1W3nDks9/pciyVVf+GmJh4EljlRybWVTgZRy1/7rGEcq1V+AafSZ829acMU8X9Qz
         m3Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.105 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa08-04.prod.phx3.secureserver.net (p3plsmtpa08-04.prod.phx3.secureserver.net. [173.201.193.105])
        by gmr-mx.google.com with ESMTPS id m40si1355691qtm.4.2020.10.13.06.53.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2020 06:53:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.105 as permitted sender) client-ip=173.201.193.105;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.105 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-oi1-f171.google.com ([209.85.167.171])
	by :SMTPAUTH: with ESMTPSA
	id SKkYk2j2LWBUMSKkYkittc; Tue, 13 Oct 2020 06:53:59 -0700
X-CMAE-Analysis: v=2.3 cv=YcjDGDZf c=1 sm=1 tr=0
 a=SUaIXBTr0u8C4O5m90wcuQ==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=afefHYAZSVUA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8
 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=ah4tFYJVAAAA:8 a=Wm2QblFjYE37K_-gV7gA:9
 a=m2NMEOuPGaAf2_jQ:21 a=m42q6rWYLWli3JEw:21 a=QEXdDO2ut3YA:10
 a=cDyXFGGuxjcA:10 a=-FEs8UIgK8oA:10 a=NWVoK91CQyQA:10
 a=_sbA2Q-Kp09kWB8D3iXc:22 a=Upar0pg2CrKrM9rf4Tky:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-oi1-f171.google.com with SMTP id 16so22517451oix.9
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2020 06:53:58 -0700 (PDT)
X-Gm-Message-State: AOAM530Qg2o9wCdcS1xON/uElI03bqOMqUDD+wPRx9k12cDXkKFX9igB
	XcXaWxrUfKW6JlYPXO6GK2zQDM1Zsfy9wxMcA/k=
X-Received: by 2002:aca:750c:: with SMTP id q12mr24997oic.174.1602597238529;
 Tue, 13 Oct 2020 06:53:58 -0700 (PDT)
MIME-Version: 1.0
References: <f484d024b14104cff4f54bad3da52151847a0b28.1602593826.git.mh12gx2825@gmail.com>
 <5fcd93b57b9232f38fd6d7bc4f685de7ed827628.1602593826.git.mh12gx2825@gmail.com>
In-Reply-To: <5fcd93b57b9232f38fd6d7bc4f685de7ed827628.1602593826.git.mh12gx2825@gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Tue, 13 Oct 2020 19:23:46 +0530
X-Gmail-Original-Message-ID: <CAK-LDbJL71n+XUzaqaZ7x4Aifd316M1FTv2jPrMx01gcrn1yGg@mail.gmail.com>
Message-ID: <CAK-LDbJL71n+XUzaqaZ7x4Aifd316M1FTv2jPrMx01gcrn1yGg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: media: imx: remove
 unnecessary variable use
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>, 
	Steve Longerbeam <slongerbeam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfFDx/ZzNNiUMx0fC09UD1u7EsRXtPxl6COYeeDEP3DIMz+g6/tUrLxrxu8TrAj7hUKMhb8HJIcFx7lbaJ3P4sg7AitXJlQahNBMYWouu9EH9BqY+nD7/
 mrjaomUe/ZXagrAn8A+EdL3E84s5wPebA+yiSLky9ZKL2L8wfzrJGUHGbWh+7hEk5jTEal1PCXhody/jKzEHQau9N+8UdskUDXU=

On Tue, Oct 13, 2020 at 6:39 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:
>
> Variable vc_num usage is unnecessary as it used only once. Instead, the
> value can directly be used in place of the variable.

There is something off with this commit log[e.g. missing words etc].
Probably you can reorganize the words like 'Use of variable
vc_num is unnecessary here because it is being used only once.
The value can be used directly.'

How did you find this? If checkpatch.pl was used for it,
you should give it a credit in the commit log.

Also, [unrelated to this change] Greg doesn't pick patches
for drivers/staging/media so as mentioned in the
announcement email, you should avoid sending patches
in media subsystem during the contribution period of Outreachy
as we can't be sure that they'll be picked up during the timeline
of a program.

> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
>
> ---
>  Changes since v1:
>     - Implement feedback from Julia to be exact with the patch description
>
>  drivers/staging/media/imx/imx-media-csi.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
> index 9320e3974d86..db77fef07654 100644
> --- a/drivers/staging/media/imx/imx-media-csi.c
> +++ b/drivers/staging/media/imx/imx-media-csi.c
> @@ -1123,7 +1123,6 @@ static int csi_link_validate(struct v4l2_subdev *sd,
>         priv->upstream_ep = upstream_ep;
>         is_csi2 = !is_parallel_bus(&upstream_ep);
>         if (is_csi2) {
> -               int vc_num = 0;
>                 /*
>                  * NOTE! It seems the virtual channels from the mipi csi-2
>                  * receiver are used only for routing by the video mux's,
> @@ -1131,7 +1130,7 @@ static int csi_link_validate(struct v4l2_subdev *sd,
>                  * enters the CSI's however, they are treated internally
>                  * in the IPU as virtual channel 0.
>                  */
> -               ipu_csi_set_mipi_datatype(priv->csi, vc_num,
> +               ipu_csi_set_mipi_datatype(priv->csi, 0,
>                                           &priv->format_mbus[CSI_SINK_PAD]);
>         }
>
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/5fcd93b57b9232f38fd6d7bc4f685de7ed827628.1602593826.git.mh12gx2825%40gmail.com.



--
Vaishali
http://vaishalithakkar.in/

