X-GM-THRID: 6950266309427855360
X-Received: by 2002:a05:6512:3b86:: with SMTP id g6mr918322lfv.238.1618326376068;
        Tue, 13 Apr 2021 08:06:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9b0e:: with SMTP id u14ls1751556lji.5.gmail; Tue, 13 Apr
 2021 08:06:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw8GOazqSBNdQc/iC8BJV2OSxI0RbLowagOw+4qgrstI4ryOqIxa8VkZokWgJmpPfKq3oLW
X-Received: by 2002:a2e:2f03:: with SMTP id v3mr15559361ljv.463.1618326374216;
        Tue, 13 Apr 2021 08:06:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618326374; cv=none;
        d=google.com; s=arc-20160816;
        b=NxHQmwxQcTSr/QAi396LMth3hFOvq5uBIR2S6vl3OzR9KMWmx3ek+DnT+rAshDExEP
         hfsyjKDq+SOjam5eOsCdGCNTQwcixm7fAf9HKueKUW1dkUIh+Q+Kry1hwwSPmWZ8hP0M
         OIZ+7/mu1c3j9px21/7I4eiOfFK8+wTfjsGtY0WjFOesr/aT5b0WtsZrtiHZonVTFyaf
         VmVXeo0qWRtcNDfhx8bpks44UDM5b7i16y5uYnQd9tPgrnrk5UCtQDf3IRiTJD6fWn06
         uwSIlSWdnkSu9yxkfZpZgfvy6jt/G3iqRXdDaMA8Ln16LeJ6u8V9ZiC2wSR77tG1rfkQ
         zBTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=1qWX5LSdkE+UnSxx/mvnAUMQvE7SF+yGfcmW7NGrCHA=;
        b=FL6mguDWo5R4L1XoGHnkAyo5Xya3sxtHYBr50j01a6G16Rfr4pmsTGo4oeRk28XIjA
         HKCiy405HA1e+Sne65IcAjBLmV+2J6kLMacsmGKdjJU15EsTfN3FtBWUut78bUCQbgVH
         3WP4moZLME2ryH8ztti6W5YF9C6gS6Q+sVb0NaKJ2nq/FFYGL+6+dw1AK8tGy4ji/PsX
         CE0SoLFewfARxEvj3h8KgTlB97B5eJyGlrvF1P7GD7J+wdwTp3mKRYkPiBop4EfugusA
         oXv9r5VY/00gSxn2Pfv9HFbSFIgIlDQXqrN7jFXP6Pa5t9ownO+V0AC2ELIOZXiPBSpf
         R20w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=SZp7DqsM;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.31 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb3-smtp-cloud7.xs4all.net (lb3-smtp-cloud7.xs4all.net. [194.109.24.31])
        by gmr-mx.google.com with ESMTPS id a10si920395lfs.11.2021.04.13.08.06.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:06:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.31 as permitted sender) client-ip=194.109.24.31;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=SZp7DqsM;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.31 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud7.xs4all.net with ESMTPA
	id WKcElFjlXMxedWKcHlj8nW; Tue, 13 Apr 2021 17:06:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1618326373; bh=1qWX5LSdkE+UnSxx/mvnAUMQvE7SF+yGfcmW7NGrCHA=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=SZp7DqsM7byWceRJQ9c2en83ABJJ0WU9J+XYVlhrQ2Gf6m+LSiB9Tmh0XIMNYbohK
	 tvZs3ICT3x5jtx8fCGm/RKCfNLTQVd9f3bS9YL9tRDO9zMmBgbonfY32j+1qiCsesg
	 QAMfrx+rhe6eFu51ATayJykB35a79uo/zXWtXI5tuTbZtoe4It9p6HHQDCD4jaYdNF
	 mlDwLoR1TOmHtxQsdWGnw+jTMchLoJ21Ujew0mW0QwcyOAZDlDIxk2zR0KJcXVpqvP
	 RYem6NEdwG8MYYisinsYD0fZjzuZEaCh/n3LCZa0If61zT1+GgIoPxZ8UhPV7qUMkZ
	 NNiWMeawekYqw==
Subject: Re: [PATCH] staging: media: omap4iss: Remove unused macro functions
To: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <20210412134253.GA19402@focaruja>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <03549d0e-04d9-6d37-93e3-c09b29ce53aa@xs4all.nl>
Date: Tue, 13 Apr 2021 17:06:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210412134253.GA19402@focaruja>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfE6LJLukE/yUnm9irefi8TOqJFZGAFoIfIRJ3P7rPL9c7aLLTZJOOuCkboRVdF30rTQag5qsupBz63U4q6IU2tXSsl8FXD1gYdhyYNZYkNjVRHfeFdC1
 SbP+biyhRRE1t2z2E8QM/LgoEu9LfVnGtthfNu0JFFARltATLunu513QBqDmzqIjlsJ4+kzG+llWDl6odePurhZd7DeJEruFO+uCUTYvcXSctTpuKgaKjl7+
 sSoLo3vPimuqc4ZoubUZP9gQ8WpGTY25n4PUVhwp8Wvs+UFeTWnwT9SlOOGxrodVlZHyePEk9ujPhI8Tpfnk/uXgk1L5K63Ok2JB6zNr8VDuEv29KB/NW1H9
 0R1HTG5cz1hFgiKz/OJDMwnukQXu2yjwxZ27Gmz7QbJgSsrZSlDe/RSv2GrI+bBRVGKjnwSOr3V03dNYlf4W7S1lXmrQyGmRCWwo86GsWHg++qvpoPTGgX9w
 Bes9pRO5t3Q+vDrW/6WZ85+OQIaIXyrAyxqo/g==

On 12/04/2021 15:42, Aline Santana Cordeiro wrote:
> Remove unused macro functions "to_iss_device()", "to_device()",
> and "v4l2_dev_to_iss_device(dev)".

'git grep to_iss_device drivers/staging/omap4iss' gives me lots of hits!
Same for to_device. Only v4l2_dev_to_iss_device appears to be unused.

Regards,

	Hans

> 
> Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
> ---
>  drivers/staging/media/omap4iss/iss.h | 8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/drivers/staging/media/omap4iss/iss.h b/drivers/staging/media/omap4iss/iss.h
> index b88f952..a354d5f 100644
> --- a/drivers/staging/media/omap4iss/iss.h
> +++ b/drivers/staging/media/omap4iss/iss.h
> @@ -29,11 +29,6 @@
>  
>  struct regmap;
>  
> -#define to_iss_device(ptr_module)				\
> -	container_of(ptr_module, struct iss_device, ptr_module)
> -#define to_device(ptr_module)						\
> -	(to_iss_device(ptr_module)->dev)
> -
>  enum iss_mem_resources {
>  	OMAP4_ISS_MEM_TOP,
>  	OMAP4_ISS_MEM_CSI2_A_REGS1,
> @@ -119,9 +114,6 @@ struct iss_device {
>  	unsigned int isp_subclk_resources;
>  };
>  
> -#define v4l2_dev_to_iss_device(dev) \
> -	container_of(dev, struct iss_device, v4l2_dev)
> -
>  int omap4iss_get_external_info(struct iss_pipeline *pipe,
>  			       struct media_link *link);
>  
> 


