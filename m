X-GM-THRID: 6807150938444267520
X-Received: by 2002:a02:65c6:: with SMTP id u189mr17724557jab.135.1584924668193;
        Sun, 22 Mar 2020 17:51:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:c507:: with SMTP id s7ls248273jam.4.gmail; Sun, 22 Mar
 2020 17:51:06 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsV6ZW7zCShzLnlfej+8cRk4y8flbBe7GJqsPoXrtQGod4kiv1bbU4Y0Knb0PsQTl8n+C3f
X-Received: by 2002:a02:52c3:: with SMTP id d186mr17542560jab.119.1584924666358;
        Sun, 22 Mar 2020 17:51:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584924666; cv=none;
        d=google.com; s=arc-20160816;
        b=vJ5fUVI0JFPbKA0ZS+UpNl1gCcsHWjFou16Q5ugxoPj5raoltJjAAp0KHweQyc4mST
         4sPxHNdca/Tv70m0PjY6ZyMX4RoVDovDZH6Sc903VLN3AaJfAtYhElR4GFOTNTPMah0j
         izlwNVG4NAdN0AjWVoeov9IccskirDFYPBezCFFS5iHW75l/HiYPVyGVApRmcne/XbBb
         u1xzskQz+6CptKnUUimjYggnOtKJN0POtiVoBbJvZ6qLgCn7fer22tktnyxa1uVgWfdr
         tbUJ53Ev28yk52hXqRhZ5LlbSAPa4d//nBgDrPbpJuT0LU6+wRFoc+jv1ZST16fk5tcg
         ogvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=S9GU6E1Tyxi+7Ux7qSSvV0cx283t6W1a+Qz183/EeGw=;
        b=0hP09SV16oerpT2o9XQNDaZUYAmitjZb7gVBIQPcPevHnohFO7f8sX1LGL5LY4Akn6
         0hSYHMn8E5iAm8AEy2ybESCDHCf1YFI48eYqbECwWwe5bCelNKGUOwoduWy2+BQPbEkR
         67Yd0cdG5TB2Fl/lQGqvVP1A1A6tpqIIUwxxYe/u9P1sP8/517xM+IlHEeZnCuzXLmij
         U2Dlsdx5BwQK5mS65Fn2GwGtvXJ1OJMvjDbITblnE6kXjT/o83y06KA61XyYevv+i2CU
         Nyh6Omc+HzeDjKMk4qDK9Vmov6Zp8BqQ+W+RZzgMaxSUOij38d//f0P/Qf4aKcxN0Qem
         lB6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LKiYty2s;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id s201si823347ilc.0.2020.03.22.17.51.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 17:51:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LKiYty2s;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584924665;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S9GU6E1Tyxi+7Ux7qSSvV0cx283t6W1a+Qz183/EeGw=;
	b=LKiYty2s7VcbmfHqmgu8dEJDkWJlJYMFnjqShR/S/MswryKz7BqwEtnwBz8BCXjgSHzqBF
	E9t6CX2n21BU/qRgfZLN0YzZf/bTfD1UjWeyY96eGllwOvnecTQ/zwXK/z02j27brMDPsG
	W4iNpJS2BSUGfkUom3eJXg7iX8/9YUY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-437-mQwYPibWMbu9b0ZIcgJyCg-1; Sun, 22 Mar 2020 20:51:01 -0400
X-MC-Unique: mQwYPibWMbu9b0ZIcgJyCg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 278BE13F6;
	Mon, 23 Mar 2020 00:51:00 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BAD4D60BF1;
	Mon, 23 Mar 2020 00:50:56 +0000 (UTC)
Date: Mon, 23 Mar 2020 01:50:49 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com, Sakari Ailus
 <sakari.ailus@linux.intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [Outreachy kernel] [PATCH] media: staging/intel-ipu3: Simplify
 single goto jump
Message-ID: <20200323015049.29da48e3@elisabeth>
In-Reply-To: <20200322214203.GA20307@deeUbuntu>
References: <20200322214203.GA20307@deeUbuntu>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 23 Mar 2020 03:12:06 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> On successful node setup, the code jumps to a cleanup label to perform
> nodes cleanup. This only call to cleanup using goto label can be
> included in the for / if blocks to make it look more associated.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


