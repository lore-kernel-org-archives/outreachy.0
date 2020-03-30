X-GM-THRID: 6808597928719941632
X-Received: by 2002:a6b:3b50:: with SMTP id i77mr9979878ioa.145.1585562250553;
        Mon, 30 Mar 2020 02:57:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:3d8d:: with SMTP id k13ls5115635ilf.5.gmail; Mon, 30 Mar
 2020 02:57:29 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsVttE7wbWPKpCaWlmIgYHEk6nR2GvctKRJjBhaojlIjXmI8qAE3ZmraFMMr1iIRnfZKAog
X-Received: by 2002:a92:c60d:: with SMTP id p13mr8511189ilm.241.1585562249215;
        Mon, 30 Mar 2020 02:57:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585562249; cv=none;
        d=google.com; s=arc-20160816;
        b=KHaml3D5ozqw2BpRIhCiGfKODlLDXj4FuTmWVeChKXfgaFkaCtBqxwR+uFA32kq+Dy
         rLD4WyHptejtizUfTE+by33iCHnEaX2/4GBs64q4GFzu0bRDNy5FceoCH4pUXFdEtbcE
         j5y26Gm8L1T6NsXXkNTX1RqH9FfcBn6+ypmANAqn+7qWEBOUNIQOMwZSHSPABxBvmbbK
         rqiYOcnZQbjOBjoyCtP792qjNpe7XxODDu0IUBWDkEh0znJu9XokAM0Xvr84dALNPoKh
         VRNMt5uC6fwFWj32K+a4fOdv7Jc+av+NOrxPKUO/X2NJrEA3N25IwRBx1lCP4b5CAbLK
         4P9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=t/z3/CCZMGU38TydekqVfeMg4pC09pZB0am9gOPpAMI=;
        b=TcDxMxV1ORO/9bI4uHBr61KvtdiDaxAwK3DU+b4rdQWGvuG6PCRrDqtZUOrmi8YDY/
         v5XBoJRjgXgY0lB7k4xjghEu0JqaRTEhMxd0fQQKLMC5nbBkZg31lW9HGUWehkKZZyuV
         nOnmWZLW4I42aUq11B8nnhNCDKBpIgTy4MHoRywklvYjVFtyVzpWt557+7oSEQ7tr1zu
         Ih1nsiGjE1CiOE9foWBfkQHREUU+FcDOEM+ty6ykWzDPuohhF8q7u9ncnduplNwS7r27
         dUjuaMAVxNDnKA5Py/pZsLzP8MnDkqC4HNiCnxTicW34+HI04wXGJt58dcxhrvEKDv0w
         kDtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CS2e4cbq;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id t125si1007767iof.4.2020.03.30.02.57.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 02:57:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CS2e4cbq;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585562248;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=t/z3/CCZMGU38TydekqVfeMg4pC09pZB0am9gOPpAMI=;
	b=CS2e4cbqKQZLtJ69P9Cj5aglcVBd11sBf5TecxzFM+6OKcG9vTvbS5Id2XoWMxBSniR9DX
	sX2fhAUanYEBK+KWJfJzhppxiTpvQVWqXVxrNKBefWnCGm/T/22Q1wmB399BrB2O0av1RD
	UBkZmvRN5kgJMmWcLAWSori8zgPY7lg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-8-KJ95FzYTM-qUDcbnKeGnZw-1; Mon, 30 Mar 2020 05:57:26 -0400
X-MC-Unique: KJ95FzYTM-qUDcbnKeGnZw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92BF91005509;
	Mon, 30 Mar 2020 09:57:25 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 193AC97B12;
	Mon, 30 Mar 2020 09:57:23 +0000 (UTC)
Date: Mon, 30 Mar 2020 11:57:18 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v5] staging: qlge: Adjust end of
 block comment
Message-ID: <20200330115718.502d2c65@elisabeth>
In-Reply-To: <20200327174401.GA7763@siyah2>
References: <20200327174401.GA7763@siyah2>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi G=C3=B6k=C3=A7e,

On Fri, 27 Mar 2020 20:44:01 +0300
Gokce Kuler <gokcekuler@gmail.com> wrote:

> Drop an unnecessary * on the last line of a block comment to follow the L=
inux kernel coding conventions.

Thanks for sticking with this, I understand this might be frustrating
but it's important that you get familiar with it.

So... Greg suggested that you should fix the strange line wrapping in
the commit message -- not that you avoid it altogether. Messages should
still be wrapped (to 70, 72, or 76 columns, you choose) characters.

A message like the one above, 104 columns, won't really be practical
for usage with git.

--=20
Stefano


