X-GM-THRID: 6803246482935775232
X-Received: by 2002:ac8:3550:: with SMTP id z16mr10406739qtb.217.1584304174268;
        Sun, 15 Mar 2020 13:29:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b7c4:: with SMTP id h187ls5310002qkf.1.gmail; Sun, 15
 Mar 2020 13:29:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuB3yjY7GKB3+jvdHUuCIo00KmNoPYdROecHKAZoTXB4zW2NtBNw+h1QUIwzGSPfjz/ZMq+
X-Received: by 2002:a37:6411:: with SMTP id y17mr24066165qkb.437.1584304172390;
        Sun, 15 Mar 2020 13:29:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584304172; cv=none;
        d=google.com; s=arc-20160816;
        b=l2VI+DTBZsAr7GhL7q1wS47J0iLz/gC/Ck3zfTlQFVE9xyNcBIZxvTG1XCFaoFL1dd
         wlvsXJlqGsacfVRnEGUn9lyqguXSw4xCOtVD2qym9m23ygRkhWytSz9TgfSO6G2cZ9WD
         pDAkUkzrStSgumtKyOxZ7HF5/+MHZR5wyRAbIwJvY2XzK2Ge0T2Hq7G0MssKAse5+vvf
         +JoGTXMn/wJlZRGtOOdm9DMnHFerKerNjI8GyGKIEhQZ1RQLvg9S/UVBaynV9ttjph9t
         aQIanECRoCNCexN099ImdbnsTAtgjEbRcv+Pcrw4CmkzLJjdUXoLwsMXnWBjkddngrrS
         WcMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=sWZ9O/SZF75LWgmAl9d3FSfWyzIkl/5rOKeMI4JY+ck=;
        b=zuCSRATnM3FEyYwQTnxutxWCAI9Zg/pqPWm9Cet+/HQwnzwmMVtWhX9UiyZEyMFoax
         sfaAeHyqlD16qWmYO81l6GuHY0jXJEpD3KlKDC+XScJKMHVRU7+urEEO7cjEoI+MDBTu
         BFNDdqim9t5avAxONyv8KBMtuhmugQwhgYEdQ/JDldElZbCIXddfofJRwIF9D6AKEkR3
         9ZxH0lFO1I3HiV4Vh1yVM/5IftxBFQV15CvpYjDFVml2H8OVFJhjXOBg0wb5heqR4vEn
         inGMIqyoM62ZCWix6YYda9liKhDjY8e9VLnj67RWLJvxT5BK1i5GJ89yfjFV/TDyn3j7
         /+PA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="E8wW//gj";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id v85si84635qka.6.2020.03.15.13.29.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 13:29:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="E8wW//gj";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584304172;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sWZ9O/SZF75LWgmAl9d3FSfWyzIkl/5rOKeMI4JY+ck=;
	b=E8wW//gjAhBlgR+SQQh7qPDI2wZvk56gHZUMn07V4uJGDoZOgwliNq3h38W7kBy8q+VcUd
	x3eo1n0uDXeplxwPjw/Qnv8hcxEGTzmpSUXRWUam4AK1qUBuJcvr25M91OVtyTpRYrBW6l
	SAL9ty5Rs5BSuqpEccB5od9c0BOImA0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-258-RXvvVqN2OMewHt4mZaM5dQ-1; Sun, 15 Mar 2020 16:29:26 -0400
X-MC-Unique: RXvvVqN2OMewHt4mZaM5dQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3BB80189F77A;
	Sun, 15 Mar 2020 20:29:25 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E43B327094;
	Sun, 15 Mar 2020 20:29:19 +0000 (UTC)
Date: Sun, 15 Mar 2020 21:29:01 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: R Veera Kumar <vkor@vkten.in>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Larry Finger
 <Larry.Finger@lwfinger.net>, Florian Schilhabel
 <florian.c.schilhabel@googlemail.com>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Fixes for simple
 typos in C comments
Message-ID: <20200315212901.6b515c24@elisabeth>
In-Reply-To: <20200312091042.GA4246@tulip.local>
References: <20200312091042.GA4246@tulip.local>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi,

On Thu, 12 Mar 2020 14:40:48 +0530
R Veera Kumar <vkor@vkten.in> wrote:

> Fixes for simple typos in C comments.
> Found using checkpatch.pl.

This looks good to me, except for the same points Julia had on your
patch:
	"[Outreachy kernel] [PATCH] staging: rts5208: Fix long line in C func call argument"

Can you please fix that up (title and description) and resend?

-- 
Stefano


