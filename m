X-GM-THRID: 6809045974031269888
X-Received: by 2002:a4a:d258:: with SMTP id e24mr8896235oos.93.1585562502915;
        Mon, 30 Mar 2020 03:01:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3985:: with SMTP id y5ls6318374otb.7.gmail; Mon, 30 Mar
 2020 03:01:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsOXe4g1wKh4brwWokTsCF9NlYohw5w2NTH6SnAQjpUULOxDK5a054lt1306ZE6BsL/VipI
X-Received: by 2002:a9d:8e4:: with SMTP id 91mr9057970otf.130.1585562501525;
        Mon, 30 Mar 2020 03:01:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585562501; cv=none;
        d=google.com; s=arc-20160816;
        b=MgX013eNGNgEAWi0iXEXT7mOqKWivzzWbG+uRaguIqj19E4sx8AhaSHPLP+n9UheKc
         ssmp9pH3rNYth8Vt/l5JOjdJMUKdTDAcwD7ydZ3LIQWhztFvIUZXaKhazMYDEgrDqthl
         a6RMlh8ChJ8wv4Kr4ZmP9qQABrblNGXTjogwXiNFWV0L9UF0Lbzlz/Ake+J5s3ldZLLU
         kcIDtTGQeM/xgJPG0bDw7R197HhRauoJmLeInk7fNSbtMU6qmBgvC3M5U1qJK87pirur
         +v2QReDaxiL9jwfXFimN6bm9jRDODN7JWEjISgQpfXpZYMVbNlHLFy5W6blB0zsnxvY6
         rUyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=jv5YvRUQeb2S0EqTZwt8uBOyn+kmP9NZPIsqRNmjI2w=;
        b=cxF0Vzc0FNVgdf8cjaVIfi+stWkCLJWEgFA1fLUHz+SOQ2XGGPBkBtgpFYpPL2j0AA
         bPgW5msJzl+poh5GsdOLkTIRTWMMWWyUPUhM0YNvRqqs7oiomWnWI7AyFSYBnhjA3aV5
         XVLhxGlcMGkzcFRgOvMwI0CccrIKD/XmMie9Hpx7t3GftaGMr4hW4WD9C4+oP+avD3ge
         Ot/ZutAlcjgiFsb+6Z9wF5yYnE7CTkBwHFD9jm0ApRqJQUKHIG4EIrw8K2PqnHoZM2o9
         7lKzXWsY9kalNDPMlf7QMkBVlcDTfT5+lIXrw9L5oUNafh9sug7fOjVHqusb4M1N+/Ms
         CSeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VI12xHF9;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id e21si1335803oob.1.2020.03.30.03.01.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 03:01:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VI12xHF9;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585562501;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jv5YvRUQeb2S0EqTZwt8uBOyn+kmP9NZPIsqRNmjI2w=;
	b=VI12xHF9WKjgODqBEeQ9w0rjDl6b50cTucx1izo88vcUVXhIBPyYV13vGejdh6KEw9dMO1
	kZXZp4sINBXnCuwvrh/eVplInWxbkxI3SBZXpFuTVolMU3sFEsNfL0KhivIT9x1Mm5NQzE
	EsGY9VR5pSCV8KB22tQfene8Kq+QiWY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-397-yvU9nfZsOomn09tWx7soBw-1; Mon, 30 Mar 2020 06:01:39 -0400
X-MC-Unique: yvU9nfZsOomn09tWx7soBw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C06E514E8;
	Mon, 30 Mar 2020 10:01:34 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3B57C60BEC;
	Mon, 30 Mar 2020 10:01:32 +0000 (UTC)
Date: Mon, 30 Mar 2020 12:01:27 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: sm750fb: line over 80
 characters
Message-ID: <20200330120127.7e946587@elisabeth>
In-Reply-To: <20200328201513.GA16863@siyah2>
References: <20200328201513.GA16863@siyah2>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 28 Mar 2020 23:15:13 +0300
Gokce Kuler <gokcekuler@gmail.com> wrote:

> Convert a single line comment to a multiline comment to respect the 80
> character rule.Problem found using checkpatch. 
> 
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
> Changes in v2:
> -Edited log message.
> Changes in v1:
> -Convert a single line comment to a multiline comment to respect the 80
> character rule.

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


