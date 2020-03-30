X-GM-THRID: 6809434547497730048
X-Received: by 2002:ab0:3389:: with SMTP id y9mr8093696uap.98.1585580797713;
        Mon, 30 Mar 2020 08:06:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:24c2:: with SMTP id k185ls1101139vkk.1.gmail; Mon, 30
 Mar 2020 08:06:36 -0700 (PDT)
X-Google-Smtp-Source: APiQypJy6UgJt3nCJ1/gtemtEpMY5mh8d3VVwSKUM4ajFiAv8o9FVFigH3fbExDL/7RotVMuGw3k
X-Received: by 2002:a1f:62c5:: with SMTP id w188mr7909726vkb.4.1585580796102;
        Mon, 30 Mar 2020 08:06:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585580796; cv=none;
        d=google.com; s=arc-20160816;
        b=I/AJw1xeGchRZd+cquebtZr+S3u+nuO7Nj3rWhRHA7CoCpHmwlokPa59RvZQ+3kr43
         rOy1piLeB7RfrMvLcqFV6ymfeEGXv0DY3YUuHLn01XKt0Qf4NRAP60AtO+OwPIo0tali
         ECr6RcBZHu4X2VOzbL5bPdIJbb8bTiqay9wWv6TXNJQnQSZZ8TejjgpROO8tbAt3HB8c
         mD2YhQcmGX7aCvb3DwROPZ3bx75GK6Llpsfj3aB56ehgtdNq4cWy9IG+jkbKp5PU8AjD
         S0EXZwNnVUbebJCnp/prUPf8vU5Ew91KOqUQdKnMx5j1jlqlYoTRY/9ONnqt/k/DHJqo
         SOwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=auBYbom7CktQLR7+o0C8y9VPp6bkNxORYl2UyFcMoFQ=;
        b=aBJ7lW6/3LUXe7gImynwM5DmWULbAz7Vc+LA7AwwKJ0NYx0FwSr1hxhKcJBlleAGWl
         AsurPCz/1qtuSYBmHcm7d55sw/asjVieJ3T05jTFfmk0eGkC7mEpgDhBLLqjThhsYpFt
         vPRcJBlSlzQysB9Hqqc+pYDY/A4OEXm9ETpOZXNoQ3munuViUGu9vHvGgZ4JzxVz/6GQ
         /BK5ByVQXbNcR3Bt0gLxIAk2sPKftNp08JA3t5J6XnLjwmyG9wwHBZd4AHDAP28LHWi1
         vzyuENpPQgT9AKvCTbg1RXH9DhAXhPTs5ZW2fNVoTwdgdM8WJjfAxsasBUY/Lremi4Rt
         sTRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GrTpw5k5;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id f17si815890vka.5.2020.03.30.08.06.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 08:06:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GrTpw5k5;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585580795;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=auBYbom7CktQLR7+o0C8y9VPp6bkNxORYl2UyFcMoFQ=;
	b=GrTpw5k53kjg7ejWOauXO0L5wUp+4uwmv3uvfd97VosbUPNYY1seQMIHqAEPBH0kp/D+02
	dYU75Dk/EBCB0BCzhOzHWB3csjnP2zAQ33H9TDETRZmsg5r73VIhoiW931h/dPtDo1nCV4
	XIaOJpg3kvFCjNbAeG7QKiVSrXosZ4U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-396-_Xr_lmADMiyVc1dQXsbOFw-1; Mon, 30 Mar 2020 11:06:33 -0400
X-MC-Unique: _Xr_lmADMiyVc1dQXsbOFw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B99B5DB76;
	Mon, 30 Mar 2020 15:06:32 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E829F97AF0;
	Mon, 30 Mar 2020 15:06:30 +0000 (UTC)
Date: Mon, 30 Mar 2020 17:06:24 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging: vt6655: Remove uncalled
 functions.
Message-ID: <20200330170624.0609d369@elisabeth>
In-Reply-To: <cover.1585442480.git.briana.oursler@gmail.com>
References: <cover.1585442480.git.briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 28 Mar 2020 18:23:39 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> This patchset removes functions that are not called in the driver but
> are prototyped in card.h. Each commit limits its scope to one function
> definition and related documentation in code. References in the
> developer's initial changelog were left in place.
> 
> Functions were checked for calls using the Elixir Cross Referencer and
> git grep.

As you're removing dead code that is actually compiled, you are also
shrinking the binary size down, and that's typically reported for this
kind of changes. You can show this in the cover letter, or also at each
patch if the size change is significant.

I'm not sure what's the "best" way to show that, two commands that are
often used are 'size' and scripts/bloat-o-meter. For this series:

$ scripts/bloat-o-meter -t drivers/staging/vt6655/vt6655_stage.o drivers/staging/vt6655.changed/vt6655_stage.o
add/remove: 0/3 grow/shrink: 0/0 up/down: 0/-310 (-310)
Function                                     old     new   delta
CARDbSoftwareReset                             5       -      -5
CARDvSetLoopbackMode                           9       -      -9
CARDbRadioPowerOn                            296       -    -296
Total: Before=33438, After=33128, chg -0.93%

$ size -G drivers/staging/vt6655{,.changed}/vt6655_stage.o
      text       data        bss      total filename
     34359      24382          0      58741 drivers/staging/vt6655/vt6655_stage.o
     34023      24242          0      58265 drivers/staging/vt6655.changed/vt6655_stage.o

-- 
Stefano


