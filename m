X-GM-THRID: 6810213860225581056
X-Received: by 2002:a67:28c5:: with SMTP id o188mr11250025vso.227.1586042918725;
        Sat, 04 Apr 2020 16:28:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:328a:: with SMTP id y132ls1814303vsy.0.gmail; Sat, 04
 Apr 2020 16:28:37 -0700 (PDT)
X-Google-Smtp-Source: APiQypJNiSavlmtAlrW+ycJqzBjWLZS+kI0k/C+IJ2CnVPVhZCrnJwS72rvL1cBLYrXCzAMbrciD
X-Received: by 2002:a05:6102:10dd:: with SMTP id t29mr11720420vsr.229.1586042917532;
        Sat, 04 Apr 2020 16:28:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586042917; cv=none;
        d=google.com; s=arc-20160816;
        b=jlEh6y+bKvYkabM/GYWd2csKkfIZE4JuRz8jI+SSLhtPgpJQx//G2KMxTiJluCQ8H8
         B2rJ/nZwHbi164HXPyTEs5AVPMp5pHN/OlaRHOsc04yrFBkJ+I+mJcHBcP/lulAOjtKF
         gtA3ISE0zxSp7lriknuK/3B1ZvgM8PWspCfXWro30RfPA1ht5diz9njQu0iS5DJlJU8b
         GmSmin7z7WvXrgZ4Lm1YqpButcdCB/G+kfnoJ9k2IqgIcPcy8t2UR+NmH/5tbOIY+Ttd
         g2t5ZNCBVtAo+aBMjiHU37KH6QbG201ejOFps3WQwjPKpnS/6PmPcpTQEwWIf8W7AVqd
         f5rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=k1F+4LgrA0f1mlqwix3T+1aJ4f2ekeZTbaVDqIamTkE=;
        b=pp9Rv9FKv1pFmWvv0l2Cl+GgxOijjd6G2eLj9siVNSp7nZKOMYhdHBWDaufPYWu8Df
         zkZ5tI988vpJzhcMQ/GDA8M8estA1yOhE5Qu7Nrot6KnNOpF4IuOq4slLsavEvC+i4nZ
         8ZWCD7zqo8M5WaiVLd0qxX1pzhrKa0QcPxcdAUHa1pczgjE7YwNRr/AYuaa1a8NKkJVc
         EaWxR9MHCIWfBYcKS711MEx5OIz3frbQZLHQ0SDLGeaK0Afp5/5bHSRf7mg1bRMlsoz+
         627rIFRdLiI0IllKP+jhLhhHHV/8HseSI1et3dXWWZZ7pMpE+gilm+AEYk9Gfyq9+7y7
         RDQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gTfJuj8W;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id u6si1256376uae.0.2020.04.04.16.28.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Apr 2020 16:28:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gTfJuj8W;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1586042917;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=k1F+4LgrA0f1mlqwix3T+1aJ4f2ekeZTbaVDqIamTkE=;
	b=gTfJuj8WopC+/xF3O5q2H49ZDuRF/XH7DYy+Nd3Pqg1E/QAa6+YcwYK7blFAptFFE/eZMA
	Lq/PO4DjE4k7HewiHR28p7K2uaD/wIrBPaIHNXE6b70Er8Nqw5fE+Fav1A4gXgmvQZN2oh
	GnMvmHQ9KOFNIevM6xRrj8gIPp4MUeY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-330-LLRR6Pe5MTGbgzbGsT5XKg-1; Sat, 04 Apr 2020 19:28:33 -0400
X-MC-Unique: LLRR6Pe5MTGbgzbGsT5XKg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 19C2C8017CE;
	Sat,  4 Apr 2020 23:28:32 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D586E26E68;
	Sat,  4 Apr 2020 23:28:29 +0000 (UTC)
Date: Sun, 5 Apr 2020 01:28:24 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: gregkh@linuxfoundation.org, julia.lawall@inria.fr,
 forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v6] Staging: vt6655: Replace camel
 case variable names.
Message-ID: <20200405012824.4139bb83@elisabeth>
In-Reply-To: <20200403171805.466600-1-briana.oursler@gmail.com>
References: <20200403171805.466600-1-briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri,  3 Apr 2020 10:18:05 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> Replace camel case variable names with snake case in baseband.h and its
> dependencies.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


