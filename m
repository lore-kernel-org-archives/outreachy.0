X-GM-THRID: 6802949681377705984
X-Received: by 2002:aa7:94a5:: with SMTP id a5mr7508839pfl.67.1584009277371;
        Thu, 12 Mar 2020 03:34:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:86c7:: with SMTP id x190ls2230564pfd.4.gmail; Thu, 12
 Mar 2020 03:34:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtNMt5oFzIiEknlt2mRct4aDKDHzyh8xadyg9uN8upcTg/1VXaXzmviLUKjkXOFvExETyFD
X-Received: by 2002:a63:c64d:: with SMTP id x13mr5178638pgg.124.1584009275566;
        Thu, 12 Mar 2020 03:34:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584009275; cv=none;
        d=google.com; s=arc-20160816;
        b=ClrjFa/Utl3aH6NvCVP0daaHZzgjCazWWF7E8Ol47JJ6Wa8hRvYaAgFH4QnlYtMjfE
         T7XLPug7eN2LwEFJdQEqpIZKU7kuWLYbzIvW7aEYhfTVhtEO5Co4H93P1Vg/GLdDAwNP
         d5uCadxG/Die62A5wt6VRdMrlRXb/N4pH7wyWDiu2Lb6huqf7XS1acqbu5wKSAtA1y+V
         eytDrfO6AAz5AHe2+ZCbXImqQgKB39f5f8HtPjaEfSr/NOdAjRgpO6geLAk4lVtpEt5v
         6vjEz14R/9HZC5QuGmK/Pg71au2aZTeLU/iMyfQycURRjWgN4S7jMRZhvUc+cm44Ws9T
         EgVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Elhehx58JjnpVasvGfpItQAGWL5MtskgGw42pHcHbh8=;
        b=djC5zMqXTNae0TO1mCwzzRhctOEyyys4mv6CTroNl3PY/+9wMkMz7XcdV+iZCU8QQO
         2MzQpl/OD32/qdmo//7Qy1BWX/gFv8gfEzhhh1QUtCH0s+KnT/JgxJrUoCKAXI7Bzm+G
         vetYkkZ1jaHpjxkVLWp+UoI72vsVQxPVqQVyxM/h0sK8VAidMc6kFLD3nnz4+h8DEmZ4
         waNFagBILcghL5QwXPOqLiui3+vG890b8gZOvinstmq4DS6T44rZ5tYRk8qRb3MakIoZ
         6L/4LDb0/PatfSUf90co2rHiZw+IEOrE9BOn3Iv1JeR/2fy821+zP5kFACp2CM2C+xXN
         Arog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=iEOvz+ti;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id b10si250168pfo.6.2020.03.12.03.34.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 03:34:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=iEOvz+ti;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584009274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Elhehx58JjnpVasvGfpItQAGWL5MtskgGw42pHcHbh8=;
	b=iEOvz+tiFEXM6pEuQpX4MhS3QUPxuSNMDnbA3buAq83XtQ5yqZuG3obZdOBdxy0pQvlG+4
	j+JXSb87KSwg6OIosK1GTUJ0/TfHaUKuBazdeOzBHwTEH9HdDdmcifPyHPYwBDnbUyNIUb
	AO34OAnXGQyeFsOuVj/8ZNaZS9ijBt4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-273-mZfkIStbNYSgFB-GvJ0d3g-1; Thu, 12 Mar 2020 06:34:30 -0400
X-MC-Unique: mZfkIStbNYSgFB-GvJ0d3g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F178C8017CC;
	Thu, 12 Mar 2020 10:34:28 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 348FB272A5;
	Thu, 12 Mar 2020 10:34:23 +0000 (UTC)
Date: Thu, 12 Mar 2020 11:34:16 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 daniel.baluta@gmail.com, hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: rtw_mlme: Remove
 unnecessary conditions
Message-ID: <20200312113416.23d3db5c@elisabeth>
In-Reply-To: <61a6c3d7-6592-b57b-6466-995309302cc2@linux.microsoft.com>
References: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
	<61a6c3d7-6592-b57b-6466-995309302cc2@linux.microsoft.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23

Hi Lakshmi,

On Wed, 11 Mar 2020 19:42:06 -0700
Lakshmi Ramasubramanian <nramas@linux.microsoft.com> wrote:

> On 3/11/2020 6:58 AM, Shreeya Patel wrote:
> 
> > Remove unnecessary if and else conditions since both are leading to the
> > initialization of "phtpriv->ampdu_enable" with the same value.
> > 
> > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>  
> 
> Stating this based on the patch descriptions I have seen.
> Others, please advise\correct me if I am wrong.
> 
> Patch description should state the problem first[1] and then describe 
> how that is fixed in the given patch.
> 
> For example:
> 
> In the function rtw_update_ht_cap(), phtpriv->ampdu_enable is set to the 
> same value in both if and else statements.
> 
> This patch removes this unnecessary if-else statement.

That's my general preference as well, but I can't find any point in the
"Describe your changes" section of submitting-patches.rst actually
defining the order. I wouldn't imply that from the sequence the steps
are presented in.

In case it's possible to say everything with a single statement as
Shreeya did here, though, I guess that becomes rather a linguistic
factor, and I personally prefer the concise version here.

-- 
Stefano


