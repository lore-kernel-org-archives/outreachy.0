X-GM-THRID: 6803763855931473920
X-Received: by 2002:a67:5ec6:: with SMTP id s189mr2117283vsb.56.1584407463294;
        Mon, 16 Mar 2020 18:11:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:a617:: with SMTP id p23ls1067674vke.10.gmail; Mon, 16
 Mar 2020 18:11:02 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtd/idq0ZNIKMmAeuZaeooYzJ8SKHxea7Mmgt7yZkkobvZ7lvS5TnFK0CQF7g7L4nLhCmdp
X-Received: by 2002:a1f:2c58:: with SMTP id s85mr2042717vks.93.1584407461986;
        Mon, 16 Mar 2020 18:11:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584407461; cv=none;
        d=google.com; s=arc-20160816;
        b=EgXcYEm2S/Xkf+cBkiI5BDsNZBEgwTCxlea2x3qEPLWLuTFUE6J790ebIUEbh9dr9H
         Q+VDK4qQpUAptVGtb9xLPkE/7JvvrF8pp21uT/fF0hH/88jnEdo3LGmEAobs5D+LCppM
         Od3wwrmGDMB39PP7EgmPbF4R0lQumoLOX0VCS90Q7iCGm9HB4iaoHHKjwX1lDCYb1qxl
         OAWYX3DKx85hoiG3+PTCQDAD85fs3x01Wvj1yfVOBCf5iwhQE/S9Ce910tVd7LqHLypj
         sYB5yUJPFELfhEyHWHWfuinE2gHEyu7VHPGHzTv27NAspVto/3MNsXimXkY8yxcYwCKE
         gpMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=PcnJS3vd4Pt2cLYsJUWuzFJE+sh6pHnt8KfP/iFfQNs=;
        b=hWrAmLlUBzsL7kIuYW5EfKahGIyoCYgSDlU0jqmHsEW8sVRBk/SBS2gNvgZl2IMepG
         BWqSdojEVLyS3oltixKZCv8Oi36nGDQJ8yc9K+CiiWUce9DjDsqDSMs5vDbdu8CwEj7d
         D0UFnQe4eur2N8I9+hw/aIEXDBL3EC+thvaF//I1ZiNHMk5G4jlp0kfqK0pfCFVwjXFY
         z7zCSdBUsoqceJeiHwTrBW7LwpR+YcSwbiGyAPXVrzjpt7ximwuKRgm2WdauUD0rnGkm
         8TKCjn4EDtjVJNOWeQk2/DpuKj7VGIQWjdnVGj/5ACJ8pSYIkIh8uXl5iGyOUP/wrOWb
         mqAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=atr8GWYc;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id s124si70744vka.1.2020.03.16.18.11.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 18:11:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=atr8GWYc;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584407461;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PcnJS3vd4Pt2cLYsJUWuzFJE+sh6pHnt8KfP/iFfQNs=;
	b=atr8GWYcIEAYDpgSgYFWQ8avaRhaLluj1BmJrMbSAxzbpBrwiHX421TMgHrctnGSzIyb9h
	QhIN6/8ZP2gs1VRAFgxCMWVaubBS5WCb3SXSCzxEiXuCe7YKcASnMUGfPy4dEJ07+L61It
	ZDSaPwPZ0pLdCcF1IXsxZt9n7edAjAw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-430-sE_yAM-SNY-9YfCyEXpkiQ-1; Mon, 16 Mar 2020 21:10:59 -0400
X-MC-Unique: sE_yAM-SNY-9YfCyEXpkiQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8C795801F8E;
	Tue, 17 Mar 2020 01:10:45 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6AA9560BFB;
	Tue, 17 Mar 2020 01:10:42 +0000 (UTC)
Date: Tue, 17 Mar 2020 02:10:36 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com, mchehab@kernel.org, sakari.ailus@linux.intel.com
Subject: Re: [Outreachy kernel] [PATCH] media: staging/intel-ipu3: Reformat
 pointer definition
Message-ID: <20200317021036.7fe16fe4@elisabeth>
In-Reply-To: <20200313183827.GA20795@deeUbuntu>
References: <20200313183827.GA20795@deeUbuntu>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 14 Mar 2020 00:08:30 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> Reformat pointer definition to make it more readable as per the coding
> standards. Problem detected by checkpatch.

What you're actually changing here is the assignment or initialisation,
not the definition.

Can you please re-send this with adjusted description and title? The
rest looks good to me, except for the unrelated change:

> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/media/ipu3/ipu3-v4l2.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
> index 569e27b824c8..52826fad6f42 100644
> --- a/drivers/staging/media/ipu3/ipu3-v4l2.c
> +++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
> @@ -485,7 +485,6 @@ static int imgu_vb2_start_streaming(struct vb2_queue *vq, unsigned int count)
>  	if (r < 0)
>  		goto fail_return_bufs;
>  
> -

here.

-- 
Stefano


