X-GM-THRID: 6948915129226362880
X-Received: by 2002:a5d:5609:: with SMTP id l9mr15969335wrv.190.1617953434717;
        Fri, 09 Apr 2021 00:30:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6204:: with SMTP id w4ls3688856wmb.2.gmail; Fri, 09 Apr
 2021 00:30:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwnT4lvhxBYH2Tgz2sEpWPKjWuHxcRzYt34F6FVoFdu/F/b+kO7gr204gD7HES734t2ePOw
X-Received: by 2002:a1c:7519:: with SMTP id o25mr12295843wmc.35.1617953433174;
        Fri, 09 Apr 2021 00:30:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617953433; cv=none;
        d=google.com; s=arc-20160816;
        b=OXQeA+vrBHlsF7QxcSnWDH4m67GPSWB0C07gccWWktzyylxbXOMrZvSRFhM046PfBB
         IZyaX+SEWovchntS5BLXneR8pT+da1/pK/kcS8g49jm088bVbeznSLe7Nf5kPAOHEXB3
         +VNTvORrCyy7y1EFzbZXeKT2FU4procufAbql1P0/fbRzUdsUNe6/+O2hrn5aFsSCEkd
         G46f74kU94cx5LhmSe+x1/bc1DLQCi0FDbWBGfqhq181g8shMQ/K1887CBnN41PDAbUN
         Py8f3Iv5YFhq8hBlBcwbExxHQXkh34v3CT3Yd9Fbx6fm5+cx/vUTmjrULV7AiRXOzjlK
         vm9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=NDd6+h2/3qPAuUCWC0yYvf9ykz0YhtUE9GoFjl7tsZI=;
        b=TlX6WJCmhRVqg/5SFAPpQ5Mw348OBw6BRPIAH9xe2P+Sj2E6WceRYasO2dOuqTWWRr
         tpADLSi0ZxiSLtCQhnn4zEztIZZdRQfTUCn9rbfppdgWwLAqTBmvcwaF39zkCXE6Zni+
         sO02QvY/jOiHlfrLjQXAt0IpHWyQROYYxSPBMQrGjYZj98CvCcFUg5qtxcZ7ErloMvNK
         UxsucAmN+hxg/zpgbWzD6rXWAYVGB+JDeI7/BIhFBEqkpZC4Y7G/gq8YddQPrq6/dw26
         /wZWAunZTlUWwFsoGAqwIOdJLSsLlW6ZDp2zV4DYws6JooIGSrWZDrhxVnu0FRPtyt5e
         UPZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b="acn/Z5y8";
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.29 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb3-smtp-cloud8.xs4all.net (lb3-smtp-cloud8.xs4all.net. [194.109.24.29])
        by gmr-mx.google.com with ESMTPS id a4si27588wrc.0.2021.04.09.00.30.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 00:30:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.29 as permitted sender) client-ip=194.109.24.29;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b="acn/Z5y8";
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.29 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud8.xs4all.net with ESMTPA
	id Ulb2lYmpzgIC3Ulb6lBMzO; Fri, 09 Apr 2021 09:30:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1617953433; bh=NDd6+h2/3qPAuUCWC0yYvf9ykz0YhtUE9GoFjl7tsZI=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=acn/Z5y8wZ+kf9lFb0pERHv/Inh6ob48I1ApWQi+/28F+s/GLljLZYxOvLROMeyo8
	 OW41w2kJj2TGPOCv9c8eXq5FkXgm1tI/UUPmUR0DPyvpENWvXJaaTsjE5nv6Vg9jdB
	 W4d5do6B1I5inoGZOhSjKvFj3QSkgGKZPKEpgc3RRh9eUP7eJpfy5MsmAeBjj5APh+
	 uj/us274FDiZwSSPvnPO5l5/TeQ1TkIHHNSqzyxXsszMmuWblOyGo/Z0T1jFXc6Oq5
	 iWzZrO3e02dhBnitrPYcddGYsSsFABVLGVhXZ523CaysQNL0fWyoGllwwkmDZcdBIC
	 qMZ7bNhuMuwdw==
Subject: Re: [PATCH] staging: media: meson: vdec: matched alignment with
 parenthesis
To: Mitali Borkar <mitaliborkar810@gmail.com>, narmstrong@baylibre.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org, khilman@baylibre.com,
 jbrunet@baylibre.com, martin.blumenstingl@googlemail.com
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 mitali_s@me.iitr.ac.in
References: <YG+Bcqxetfj98l6V@kali>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <479be6a4-2e6f-98a6-045f-d7c2132137c4@xs4all.nl>
Date: Fri, 9 Apr 2021 09:30:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <YG+Bcqxetfj98l6V@kali>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfCN+87wjz3gHQQueWu2C636kZE2Uika+ygi6v7fBe16Gt90A81UblFHIDuyaB385YzyS3nhv2vOADU0KUzGLdbdhyl20upRf4QIT7lPW0uhJae2k342W
 cNX7ltuZnppyiK5RpvujsORxXzAcXrxdV5BiWwpVQxXgHya+fXhrqjRhW93vISv1lkAObgW8tVYFsjLEQ3m2jCvnMpX0IG9tSGVZHS6HJjd7cVLk80T0iZjq
 xYk4d9pU0cP5/kULuE4K4wCFIoN/jcAQhZnG6hIoA8ES7nooRGEordUSX6onN2jxjh70Vb6HhM0vpVBFZakwHPog3WLpEKuxU6Xxqd39A403nk/KNAIAcAa+
 MqhDhdAxnYqNOfKSU7ERQtIAEUAs0SivoPO681Lmb1C9SB5nCfn4TClvE11SFUp8lhjkeNZfu6OoxCYtEw7yqKmL+lrZVHx7WRDOnw1wwHj1neXkfUN2GnFh
 HMbeCjy2ENt0QdcgszS7QtBhtpCNrWUmiiZF4TpU9FsOxc1sgRmP58/HXwxRAI4ZzTp9y6lw0Aealzcg9guG+V86MrOJPwVPRLu8zqd2hlWGiUQjYiTf6fYd
 oRQpSX4kUiim+X6xoJhXSeQPpiv/uo8e1opAB/1sTy4dDQ==

On 09/04/2021 00:19, Mitali Borkar wrote:
> Matched alignment with open parenthesis to meet linux kernel coding
> style.
> Reported by checkpatch
> 
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>  drivers/staging/media/meson/vdec/codec_mpeg12.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/meson/vdec/codec_mpeg12.c b/drivers/staging/media/meson/vdec/codec_mpeg12.c
> index 48869cc3d973..21e93a13356c 100644
> --- a/drivers/staging/media/meson/vdec/codec_mpeg12.c
> +++ b/drivers/staging/media/meson/vdec/codec_mpeg12.c
> @@ -81,7 +81,7 @@ static int codec_mpeg12_start(struct amvdec_session *sess)
>  	}
>  
>  	ret = amvdec_set_canvases(sess, (u32[]){ AV_SCRATCH_0, 0 },
> -					(u32[]){ 8, 0 });
> +				  (u32[]){ 8, 0 });

The alignment here is because the 2nd and 3rd arguments belong together, so
the alignment indicates that. In order to keep that I would add a newline
after 'sess,' as well. Same as is done in meson/vdec/codec_h264.c.

Regards,

	Hans

>  	if (ret)
>  		goto free_workspace;
>  
> 


