X-GM-THRID: 6802590976179175424
X-Received: by 2002:a5d:8d90:: with SMTP id b16mr3867079ioj.9.1583946287206;
        Wed, 11 Mar 2020 10:04:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8787:: with SMTP id f7ls553680ion.3.gmail; Wed, 11 Mar
 2020 10:04:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vscwqcSScIdTA20BP+ZyfjRj7Cntg9jru3WTr92Z0fJkvmB+1ogfe8GW/ZqIwvOMqFd8t3A
X-Received: by 2002:a6b:5406:: with SMTP id i6mr3765324iob.188.1583946285497;
        Wed, 11 Mar 2020 10:04:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583946285; cv=none;
        d=google.com; s=arc-20160816;
        b=Z+bW7BsyZP7vPIPaivfqBov14m+u2LHf+y6Z6Nrc+Ouhy53ACEoXF7mg3sJAjb+wqQ
         Zb1MCcucje1DKSTmu3wawd6EOKWp9oFv8LgbAjPvLolioLLkLyEb/3K6dZl7pvyAWGLe
         h9vDd1Nvr5EQX9SGLMLbHiymLtzXYtZTlRpXAv+6rrA29X4aPVmrl1ug8CkGzSZKrc/S
         qNrDnjNb/07Yu5D2ozB09oRdSH2BDLgUeZC8lEyxtpm1neGY9ZUBI7jYy9Sxywj40acO
         0aZAqW4O2uhfT0J7OSElpLSeSGO88GXl4+bZNFL4xwW3+x6bGPQ8g23w80+o+hu1QCfD
         HPJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=jykx3cJByb3AWCb0WV64LkUlnx3R9Hi3e1lE7ij8ROg=;
        b=ts7ervpwoIhgYDkdMtdjr46vrkoTTP715BfSJgY658CBSGTYpwibkVWqDMpymZqQ+s
         ZjRO3OKg2yN8dwzHrrlTJnyxgT10eaj7mPyt4ApqOvRSWZw4dUmZiuDIvSm5Nqitlu1L
         gxUc2JQZN11KipITgqt1Mbxn0c5Qj1FLfrzhK1TYGKRtCOKehArozFg/K9zCc6sZ96/F
         YoiHL5Yuh4y0zTNJnWM2ejd6yzpqi2fcyfufCpY66u6sjNpS2q6dR0vpt32TFJ7oKt8E
         AhRNLJZJgpVGEdfvGMJ5SzTwaJxPr28FFdipR90fM7nYWpbL4xx9SOFO4UEsd+xSa/2I
         gvpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XSWOdsI7;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id t64si97655iof.2.2020.03.11.10.04.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 10:04:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XSWOdsI7;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583946284;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jykx3cJByb3AWCb0WV64LkUlnx3R9Hi3e1lE7ij8ROg=;
	b=XSWOdsI7jKXGkxrXUz+LY5oZdm1+A3z30b0kLKFdo823TlBRLLUqTsBd+bcDZIabFwC1Ig
	5c/VL2s/FGhWhSl/6DWxfhyoo0hCVTjrDIDrz91fufSlkU6RBWhUDSSK4YspLSiPy2i33o
	Gc50xMUqvnZLKtE9DFesBAw6tIWBQmk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-451-fylXbBEaNUCy-xrSG-2R-A-1; Wed, 11 Mar 2020 13:04:39 -0400
X-MC-Unique: fylXbBEaNUCy-xrSG-2R-A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 07B451937FC0;
	Wed, 11 Mar 2020 17:04:38 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7E1755D9C5;
	Wed, 11 Mar 2020 17:04:34 +0000 (UTC)
Date: Wed, 11 Mar 2020 18:04:28 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 daniel.baluta@gmail.com, nramas@linux.microsoft.com, hverkuil@xs4all.nl,
 Larry.Finger@lwfinger.net
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: rtl8188eu: rtw_mlme: Add
 space around operators
Message-ID: <20200311180428.6489fe9b@elisabeth>
In-Reply-To: <20200311131742.31068-1-shreeya.patel23498@gmail.com>
References: <20200311131742.31068-1-shreeya.patel23498@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14

On Wed, 11 Mar 2020 18:47:42 +0530
Shreeya Patel <shreeya.patel23498@gmail.com> wrote:

> Add space around operators for improving the code
> readability.
> Reported by checkpatch.pl
> 
> git diff -w shows no difference.
> diff of the .o files before and after the changes shows no difference.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>

This looks good to me. Further clean-ups here could probably make this
look less messy (there are long lines, unnecessary parentheses that are
rather confusing, especially on that 4/5 factor, "magic" constants that
might make sense to figure out the meaning of, etc.).

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


