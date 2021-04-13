X-GM-THRID: 6950644769369358336
X-Received: by 2002:a19:f00f:: with SMTP id p15mr2401158lfc.326.1618326619359;
        Tue, 13 Apr 2021 08:10:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls3302092lfa.0.gmail; Tue, 13
 Apr 2021 08:10:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw6a6yiC5aK5LuYXjgy19R9LzJLj/vttGPij/MucjtylxJaLxkENiw19f2ORG2Rt7tmAZJF
X-Received: by 2002:a05:6512:3712:: with SMTP id z18mr12914808lfr.482.1618326617590;
        Tue, 13 Apr 2021 08:10:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618326617; cv=none;
        d=google.com; s=arc-20160816;
        b=qTRQXkMOefWL0rDsqCwAOPkl8WG1j+mIrxCqQcx4P7EMWz49zY8JDCCmE0aiGfmwI9
         kOIDA3WvgIwJFWqOfyraZ2FhXQ5OqOj50T+by0ry93fhMOkrhANvhpVhT4BhfPSW7wB4
         ZoZE+HlxEO4tNz2To8my0ToHKig5Rz7MD+AMrTLfgkSQwmsu9Z/qczDlSuzWJ/Iiixhy
         VqM0VFKxp1suIGwbvRY8ian2t/d2lHm2/0+H1JUx92LsuPZKPTZe4UvW0qusJw4k+bou
         ed6sS50JfVNhB6tDTuc5UItYZ61+rnGbVrL/wlgWNwV2m2nADLV1GgCamhSyetUu5tUb
         PDVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=APSrpDri2gHEYWyjG8TbwYgAolOfNqXeXdzok49rhQM=;
        b=riaGzs17R79cODEHOWAs/5yRH5nrfyH6sIyGu8vI30vG/J2CJWjNQ52K7kMkgD0Yj8
         XwM5KJxeah21xzl0eAQ1WtYqgt9kKV2ec32V4DVdHTSm2frzQ+WpvAOzCNZvkXq4+1Fk
         N1EiVYxvZUFJhoJVLeHrVRNlrhBJUAI2xj/WO1M3aqxgzM8n3wb3lZpoDCVzt4n6j+OI
         ypRS4jm9MoL/R+L81SCD5VCLl5OVkyzumYfl4ljBexWj+OWDHOdAqNA+Y0Xr98KNDt37
         zeSfRaATmJ1TqWqyGxPaizovnCwJl2KWzXCTKbg0h9UaGlSIM/UK2cm5tDOSua8v7D9s
         uUcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=DUMMkDg3;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb2-smtp-cloud7.xs4all.net (lb2-smtp-cloud7.xs4all.net. [194.109.24.28])
        by gmr-mx.google.com with ESMTPS id c17si801980ljn.7.2021.04.13.08.10.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:10:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) client-ip=194.109.24.28;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=DUMMkDg3;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud7.xs4all.net with ESMTPA
	id WKg5lFlIKMxedWKg8lj9kz; Tue, 13 Apr 2021 17:10:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1618326617; bh=APSrpDri2gHEYWyjG8TbwYgAolOfNqXeXdzok49rhQM=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=DUMMkDg3NE0JepjNZ6wA6SkSGRf5FFUN6K9xFcejyHDe4QtZZHwZGeDeUDxKASkgM
	 YnXde8OKmHqkYDVv0eni6NwWsAyP0s7tXZtpCsbNeX+kFZAVencNtv9RUDEYqc0Mk1
	 C8DAFYh4mW86MIU1gajAETC0p2WS6C7a6+Afv0B7sxxsk2K4sqQYobr64jyEavX/6t
	 WBfiVclE+eQthhTYjkK1v6cw6ixkwTuqG6xyaFde5VCyTWb1g7P4agJpDOXulAWyI6
	 1bR7PRI/KGvnkyVgzoiUGQmUnQ1toVefAQw+5+z1y8J8y29w2581Y3/H89hOKLVzhV
	 8b4gaPORGGJKQ==
Subject: Re: [PATCH v3] staging: media: meson: vdec: declare u32 as static
 const
To: Mitali Borkar <mitaliborkar810@gmail.com>, narmstrong@baylibre.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org, khilman@baylibre.com,
 jbrunet@baylibre.com, martin.blumenstingl@googlemail.com
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 linux-amlogic@lists.infradead.org, mitali_s@me.iitr.ac.in
References: <YHWmiBYAbOUw5YrY@kali>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <a7162f8a-e706-c144-c355-7e2a130c453d@xs4all.nl>
Date: Tue, 13 Apr 2021 17:10:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <YHWmiBYAbOUw5YrY@kali>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfOp7iwyIYwwEGU6SZLgtanc/6jZz3y+gJlF5rx1w3QIiBopfW+X08QRP5Q3HsQMW4Oi6IwSkpRk4fHgoShiyLN0l6YZtbwDMvSRK8CbjBM1fMSdDMKv7
 SKoWodaiijQpgUekfb4A/mi5fvm+KScYddjHWQ6PBb3c3cR+Lp3jrymUDSg2hdEHWRRIpG49cUwLGVU5TwPpXx6mn2f8OllcYxs/pXZKJP5P552gJ6W0S2nc
 6VnbQul+cFr2w4p5cV85iBKhtzNMXtDZSFAxG2j11Qe4RNeGCLOYu3BfooODMlB/jkfZx+0F4amJGmk3vESY26uvt+keLZ6i+wgGr0lW/r0UvxLLSX9AoP/Z
 Clp2QhI+8W01vyQ+2dEn+1Wj7v1g9VsOYppMwZBScmzzv111S3OwJ7ik4vGnkZDkrHYH6u54hSghA4RO0LTPQMabuolnJh1X/XI+9sfznWdeEKMcz3jl3MJc
 5nfW4UL4XTcjcJktxog8gbj81l/tb4yOfsKwsNhx0PyP/9qab6bTfmHDdU4O0DJGVYACb2RwFIoh1UX0NnzOJWubRlDNlesanw0UpfDsAKaBYEyJ6lafvldt
 X4cC46z1S6rU19UA+hPpOTcZq5PLMhdvP0J7Jw4McF6umGlH9LXQQuw/RKJ7+NcX0UJ5YuhvRTcIwnTRxBMV1QQi

On 13/04/2021 16:11, Mitali Borkar wrote:
> Declared 32 bit unsigned int as static constant inside a function and
> replaced u32[] {x,y} as canvas3, canvas4 in codec_h264.c
> This indicates the value of canvas indexes will remain constant throughout execution.

checkpatch.pl output:

WARNING: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9:
This indicates the value of canvas indexes will remain constant throughout execution.

Regards,

	Hans

> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
> Changes from v2:- Rebased this patch and made changes against mainline code
> Changes from v1:- Rectified mistake by declaring u32 as static const
> properly as static const u32 canvas'x'[]
> 
>  drivers/staging/media/meson/vdec/codec_h264.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/meson/vdec/codec_h264.c b/drivers/staging/media/meson/vdec/codec_h264.c
> index c61128fc4bb9..80141b89a9f6 100644
> --- a/drivers/staging/media/meson/vdec/codec_h264.c
> +++ b/drivers/staging/media/meson/vdec/codec_h264.c
> @@ -287,10 +287,10 @@ static void codec_h264_resume(struct amvdec_session *sess)
>  	struct amvdec_core *core = sess->core;
>  	struct codec_h264 *h264 = sess->priv;
>  	u32 mb_width, mb_height, mb_total;
> +	static const u32 canvas3[] = { ANCO_CANVAS_ADDR, 0 };
> +	static const u32 canvas4[] = { 24, 0 };
>  
> -	amvdec_set_canvases(sess,
> -			    (u32[]){ ANC0_CANVAS_ADDR, 0 },
> -			    (u32[]){ 24, 0 });
> +	amvdec_set_canvases(sess, canvas3, canvas4);
>  
>  	dev_dbg(core->dev, "max_refs = %u; actual_dpb_size = %u\n",
>  		h264->max_refs, sess->num_dst_bufs);
> 


