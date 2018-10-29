X-GM-THRID: 6617138679585439744
X-Received: by 2002:a2e:9e4a:: with SMTP id g10-v6mr340748ljk.26.1540806813799;
        Mon, 29 Oct 2018 02:53:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:7b01:: with SMTP id w1ls123922lfc.9.gmail; Mon, 29 Oct
 2018 02:53:32 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fBMk3y/z3fjY1n+sSrK3ll0hDwKPRbt2/pimh6ajYK/6eazMJr45a5KelzmXsXH7gUQy70
X-Received: by 2002:a19:a28f:: with SMTP id l137-v6mr1067998lfe.14.1540806812869;
        Mon, 29 Oct 2018 02:53:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540806812; cv=none;
        d=google.com; s=arc-20160816;
        b=xDvSeK7hgO3MPmsH4Wr3/G4JAKvkCLCy1Ojs890ajK3vrdgBDgTQvEp3v/Iap72REQ
         J85tDFmpt7nyNNwtGpXs0G5jbhLEjzk0vP3bay0iW9qAB7qgUTkj2vZONP37vBpZb7sK
         jRkoo2mCqbDW5OmDpzWKrtB+Tgh8Qgp7ueOysp6I4ZVjEdT9cQSCDoHyxdqnDvSMzaJH
         UsyB9WOe4si1J7jW9N3HZFxJpf3GAt3cNSfs60W/5nblF5em8VfD0H44xcMrx6qYJOJN
         0h/R/ze3UvCwK1Zu7K+4xXv5B2+y7DyNOBEDYQhrT3rvRF80h8qxk/b3k8r3YDFgC+LE
         +eNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=edjjHeMsFaWoz4XqfQDTC+XQzspBOOcSR5KGYmg1bi8=;
        b=hGav9lfcxVIJ7fgpELIBvZgMLvJPvb8p1YShID1Th4iDI3ZVD92jkmS7Z4Jtw5i1Cq
         gmZShowC6XT2AowbzVfl/Fx94NEivVywr4X5VYg8ZPXcj9kMEowq6CF3rS6RvxMTKnZa
         34r2joNbu4zaNQ+0n1O1ww9kyOWS79f58KqX4IvQ9Z3Vjc98Ls9/YQHyOhov8PVJuBIA
         Lff00BesdF/5MFbGFjN/lzGzJVr+IE6MyUSo0GwsiLPeSIr5As7sccNdFvz+CY3DyPoC
         8UvS3E9SVnYAvj7UaoPF8YeD/Q5fKVANYrtq1KI+FjPUF72ji6GZagyy5MMV+wC9GuIV
         SGMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.29 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb3-smtp-cloud8.xs4all.net (lb3-smtp-cloud8.xs4all.net. [194.109.24.29])
        by gmr-mx.google.com with ESMTPS id f192-v6si526704lff.4.2018.10.29.02.53.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 02:53:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.29 as permitted sender) client-ip=194.109.24.29;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.29 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [IPv6:2001:983:e9a7:1:5139:d121:18fb:2507] ([IPv6:2001:983:e9a7:1:5139:d121:18fb:2507])
	by smtp-cloud8.xs4all.net with ESMTPA
	id H4ElgGU2o0ZZEH4Emgqvuy; Mon, 29 Oct 2018 10:53:32 +0100
Subject: Re: [PATCH vicodec 1/1] media: vicodec: Add empty callbacks to
 prepare for the request API
To: Dafna Hirschfeld <dafna3@gmail.com>, helen.koike@collabora.com,
 mchehab@kernel.org
Cc: outreachy-kernel@googlegroups.com
References: <fb11134ccd7459f5b88f277f52f40b6a1f901bc7.1540672323.git.dafna3@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <e5063a91-be61-9580-a4ec-b08068c548aa@xs4all.nl>
Date: Mon, 29 Oct 2018 10:53:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <fb11134ccd7459f5b88f277f52f40b6a1f901bc7.1540672323.git.dafna3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfHnUvH4NhoGMTsLIc64jXHNr4ltANLGWTSEwvPABI4K/jMtCb9soBOnVt2vFFVEU5k5r5B9hVPlVd2kS7+QglWA0pAMhTcu/G58NDHrEC+DdHpGK3mr/
 eoB6cZXRhRRZWAuKOtoplNQBX2E1TZ5mOGJN2XMQ85EGTQ6TLNvZ5PMVT6NNLt91AHvSq4bcj4MJX8kflopO8gT6W3tcugt+GZHKuUwebp5aLOqddkTWZ4/A
 2k0uoEH5IuBcDWPufMDEwhWAij9g7gDFQsPOAMfmuJdWPMDL2K5cR2TVpRTvdT0pG96eHnzck8oWuYVwCkrlonZzaXEpFKIvToJ7b5q+UF0z/zuc+xR6GWs6
 du78LK2KGosc/DFNWNPGeFOMdHX9bw==

On 10/27/2018 10:37 PM, Dafna Hirschfeld wrote:
> Add the callbacks `_req_validate` `_req_queue` of the struct

Where does the '_' prefix come from?

Regards,

	Hans

> `media_device_ops` as empty functions.
> Those will be implemented later.
> 
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
>  drivers/media/platform/vicodec/vicodec-core.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/media/platform/vicodec/vicodec-core.c b/drivers/media/platform/vicodec/vicodec-core.c
> index fdd77441a47b..238a59cdf3d6 100644
> --- a/drivers/media/platform/vicodec/vicodec-core.c
> +++ b/drivers/media/platform/vicodec/vicodec-core.c
> @@ -130,6 +130,20 @@ struct vicodec_ctx {
>  	bool			comp_has_next_frame;
>  };
>  
> +static int vicodec_request_validate(struct media_request *req)
> +{
> +	return 0;
> +}
> +
> +void vicodec_request_queue(struct media_request *req)
> +{
> +}
> +
> +static const struct media_device_ops vicodec_m2m_media_ops = {
> +	.req_validate   = vicodec_request_validate,
> +	.req_queue      = vicodec_request_queue,
> +};
> +
>  static inline struct vicodec_ctx *file2ctx(struct file *file)
>  {
>  	return container_of(file->private_data, struct vicodec_ctx, fh);
> 


