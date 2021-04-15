X-GM-THRID: 6951120130932736000
X-Received: by 2002:a2e:8616:: with SMTP id a22mr1887988lji.509.1618495883811;
        Thu, 15 Apr 2021 07:11:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:588:: with SMTP id 130ls1178016ljf.9.gmail; Thu, 15 Apr
 2021 07:11:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwZ7R2dBmgqRDoeFbAgaycV0inF2V91QPglzlqQL5uT/PVvsUYTLe9M5BmOnhlYBcSRfnoS
X-Received: by 2002:a2e:1641:: with SMTP id 1mr1868183ljw.253.1618495881669;
        Thu, 15 Apr 2021 07:11:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618495881; cv=none;
        d=google.com; s=arc-20160816;
        b=kM5/lGnRr7nVbrSzLBMd6/6Ren9NXwP3SnruoGojXsFu5esRz1gQYB50gKxrModip9
         R1C8yDXMUnzvLLoQCB/R1NYeK8/nUyxggL7f4EnwQxOEF9IIFaA4vSVDJp6l3B/kP058
         IjnJZwcrZBFkKXifsx7Rk/h5AKBKu8rTvq+bvGkRIJGo8oQXDi9HM8aezgfQccAAEPSN
         6YrzAZKNb5nJWJkIJJ5/Cj6pnmQGHaf65wzpC6Dbxm9L4o+OsS51v27IUFP/dKzX7dg0
         5Aeof/KcJNt/QBION/CUvfCVFHoEHf22R+LRMKRtM6gOYPJrt1psQY4W9R5Ze4Gu22vU
         pBDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=2DW85aWGVpvApmaMvwStRRQ7A2RZRB6U7dGqbMFixgI=;
        b=HkEddvK8JLJhmMM2jmGthBGb9q4zn3Yp014yehk4QduKUAlHfLBIo03AMN1XX+IH7K
         Mu0NkyEW4Mb/T0hGVIso5PyYSWuo5t0WVO/PLzNr9+LjWx3A5rxm0vBB+6gCFehE7i8K
         rMRUrAUYMbn7wHXm8nATOL+CVQfoibSpRZmXs2IfHBhrmWjknvB0un6xmYl8kfQcgzf/
         qRONCExZhk4074RVobZR5GwEt8PACmEhu+wxC5ndwxBXR0pnxN/DuVllo854eK2jzR1N
         XkNBpgDtN9WcZ/whAGo1dhc6x5kmEk3MR+sn+QOokhRulKixSZKOtMfhxOEnOv/XW6M4
         wlHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=F7VbhHcE;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb1-smtp-cloud8.xs4all.net (lb1-smtp-cloud8.xs4all.net. [194.109.24.21])
        by gmr-mx.google.com with ESMTPS id u11si163582lfi.6.2021.04.15.07.11.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 07:11:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) client-ip=194.109.24.21;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=F7VbhHcE;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.21 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [192.168.2.10] ([84.202.3.209])
	by smtp.xs4all.nl with ESMTPA
	id X2iDl3ogpsMyaX2iGlUQji; Thu, 15 Apr 2021 16:11:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1618495881; bh=2DW85aWGVpvApmaMvwStRRQ7A2RZRB6U7dGqbMFixgI=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=F7VbhHcEXqVlSqY9V5cWM11aNNUsbiVn5RKZ82GjlCfEC3fVNh7rrNu1NOyApS9ed
	 H74idu5SCF50woNs6+nZI2sC+2jZR/CV+lMG2JHTTQqaFjiHTl40n6iWEf3pdEMBTS
	 65ETtsHq/FxlUQqOtvEUUdkLaUGQSMXDpZ0ZmV8Ra6xC3Qw4XxsBCG8EYmu+ScpLda
	 O1FS+ZtaCc2o+Bc9QCRra69LvorYoqbhS9lVHEJdUjM5E5n2tsQwAuV8oTWNTqLZlz
	 H3vl8ayVkADs5D9pRvrOPFUC5qjZ6aNk/a3cxseZZ04z6HPWVOUzIlFv1NNnKzKAya
	 049w7xB/8IJ4Q==
Subject: Re: [PATCH] staging: media: atomisp: pci: Change line break to avoid
 an open parenthesis at the end of the line
To: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <20210414205610.GA9017@focaruja>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <963781e9-118c-8b36-d395-e6fe67a4c5f7@xs4all.nl>
Date: Thu, 15 Apr 2021 16:11:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210414205610.GA9017@focaruja>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfARA5CDS6hAFgvyRHve1Qyx0RD09qWRFv03Ssdzr3jQ+N1Nwzv4ZdPigVGYi+DLww9jHszQCLVWD1TLPLJBqq9jBxvlZIoPVPwOSfXXw2qQxnkuXca28
 8cRBsAjDY0/jNHEGeUAKxN8yhQEHtUGV3yypia4uUx+/gmXdg7RPgbxL1OOyA1Tk3j21B1YfTaxvQA7gBWAv/MElQOn1m8jZj87C/+EcFJ/CZs/L+XpcNPKa
 Ru5/MHUpy0ZTZEPVgTY+1lJUb0rPE56GjEu8RZQwYfV6gmdfHcRdlz7wBXPJ+oyckTtpgqbPNSOAse/zlKebAaMtQgsw2vOwnaPUTGD+/paWWlK+FFx6VAz7
 qYju/mB7SLZdllmLdq/0TDkoP13o4Ggl25EMBQxrQJP7ViEuvAeCKxDokaK/zdormosG/ZabEFrJHRB+U27FFGrZeUQGn9LZ1j1qOoYvSiK7SdDK8yZuAuDI
 XjNFFZo4qICXFSFp

On 14/04/2021 22:56, Aline Santana Cordeiro wrote:
> Change line break to avoid an open parenthesis at the end of the line.
> It consequently removed spaces at the start of the subsequent line.
> Both issues detected by checkpatch.pl.
> 
> Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
> ---
>  drivers/staging/media/atomisp/pci/atomisp_cmd.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.h b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> index 1c0d464..8c4fc2b 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> +++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
> @@ -75,8 +75,8 @@ void atomisp_wdt(struct timer_list *t);
>  void atomisp_setup_flash(struct atomisp_sub_device *asd);
>  irqreturn_t atomisp_isr(int irq, void *dev);
>  irqreturn_t atomisp_isr_thread(int irq, void *isp_ptr);
> -const struct atomisp_format_bridge *get_atomisp_format_bridge_from_mbus(
> -    u32 mbus_code);
> +const struct atomisp_format_bridge
> +*get_atomisp_format_bridge_from_mbus(u32 mbus_code);

You keep the * on the previous line since it is part of the return type.

Regards,

	Hans

>  bool atomisp_is_mbuscode_raw(uint32_t code);
>  int atomisp_get_frame_pgnr(struct atomisp_device *isp,
>  			   const struct ia_css_frame *frame, u32 *p_pgnr);
> @@ -381,9 +381,9 @@ enum mipi_port_id __get_mipi_port(struct atomisp_device *isp,
>  
>  bool atomisp_is_vf_pipe(struct atomisp_video_pipe *pipe);
>  
> -void atomisp_apply_css_parameters(
> -    struct atomisp_sub_device *asd,
> -    struct atomisp_css_params *css_param);
> +void atomisp_apply_css_parameters(struct atomisp_sub_device *asd,
> +				  struct atomisp_css_params *css_param);
> +
>  void atomisp_free_css_parameters(struct atomisp_css_params *css_param);
>  
>  void atomisp_handle_parameter_and_buffer(struct atomisp_video_pipe *pipe);
> 


