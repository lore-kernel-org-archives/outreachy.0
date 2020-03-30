X-GM-THRID: 6809167002234519552
X-Received: by 2002:a5d:814a:: with SMTP id f10mr11367266ioo.7.1585591662898;
        Mon, 30 Mar 2020 11:07:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:7806:: with SMTP id p6ls2337115jac.5.gmail; Mon, 30 Mar
 2020 11:07:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt95WTpadDD7CpRn4BRH26/OxddPCzNMYdz6Iw6rIA6a2id/DT7c+9ttFw1Mx9XGbI70tqR
X-Received: by 2002:a02:3842:: with SMTP id v2mr12294161jae.9.1585591661638;
        Mon, 30 Mar 2020 11:07:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585591661; cv=none;
        d=google.com; s=arc-20160816;
        b=Tiy0x+/I3J5FOmB0lnyvf2l+1T19JeXo/Q0LUdKTTZM+rjn5CchChiEJspB1ChCGNK
         +KDqVXEMRjnl+JZHp8nFMzrGL3VdSqOnDcav+GhkDsM402ZlowISMEeUG4Yxhj53s98G
         3FAHssR9uyjh7nv/cs3N4tH5eloxYNQf61arH2vugmpYetd5XuTx+aIe+ndh0+P8M0OZ
         +qyYYpVtAloNua6LAmExm5FUuVXCxQ706NfUFs3HSuQm2CLave1SkwA4KmXdbgHa0ozv
         j+ZhOgxVSpXeoz/v4/WAoNpmL/VK6v+lCjKBj2L08O300UHP+V177cWawOK5P3iT3BA6
         Hzeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=rfk3shQ9mjOuJrhLVfHf4WD5ya7EhVll4WNcwBvW710=;
        b=Drn/wPUPy6dkgG6O42oDuhYwJHj2glaP8FPUUOUzVX+JeD+b2Pzoo6Z+3Zo4nrjU1I
         ngBqfLQnamUvz8GWkce+rBDyQndZeXPn7k8nBXg+NsHlUgnpEqCCtwSiDdG2JHeP9BJ8
         BVjamhaWS4ijPmTTLMNIyVdq4G8ClDDlyFjf8yA/uqhmDdAWlcYTkDhrRyestXU8+oV5
         XrJryEQkXwyLfJDduLYSEp3RHl45k/1oc4dxm07cEC9tkVK6iU2A+ZTmhLX6KHThgmwF
         Oa0D21BoC0iziIUEsV9Em7uNTsB3aiIZWgmDuPMVuUedme3bEbrEbbhJF+BT9WX/H9Iq
         I0wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Bcm/V8dV";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id u6si959798ili.3.2020.03.30.11.07.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 11:07:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Bcm/V8dV";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585591661;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rfk3shQ9mjOuJrhLVfHf4WD5ya7EhVll4WNcwBvW710=;
	b=Bcm/V8dV4v0omP4ySyYd17QodKf/99B9aG5HqyeXCI6fB+Hz6bhkqQUeahmXT/oxTryPqR
	RBJboyg8CHRxDm9NXO0+8iKuvXxIH+ChaGCxSol2lC9r5k8EO1iNRTo5l5pP5YHu65UmYA
	BsdrDnhcyDlX+mKaNOXJfqSFmmGVbN8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-97-riPZriwKPee6xIA4eWS3_A-1; Mon, 30 Mar 2020 14:07:35 -0400
X-MC-Unique: riPZriwKPee6xIA4eWS3_A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1D040100551A;
	Mon, 30 Mar 2020 18:07:34 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1533497B13;
	Mon, 30 Mar 2020 18:07:31 +0000 (UTC)
Date: Mon, 30 Mar 2020 20:07:24 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: gregkh@linuxfoundation.org, manishc@marvell.com,
 GR-Linux-NIC-Dev@marvell.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy] [PATCH] staging: qlge: Remove
 extra blank lines
Message-ID: <20200330200724.1ad30b76@elisabeth>
In-Reply-To: <20200330051343.7841-1-debsoumyajit100@gmail.com>
References: <20200330051343.7841-1-debsoumyajit100@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 30 Mar 2020 10:43:43 +0530
Soumyajit Deb <debsoumyajit100@gmail.com> wrote:

> Remove unnecessary extra blank lines to improve code readability and to
> adhere to the Linux Kernel coding style.
> Reported by checkpatch.pl
> 
> Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>

This looks good to me, but why isn't it in a series with the next patch
you sent? They touch the same driver with similar purposes...

-- 
Stefano


