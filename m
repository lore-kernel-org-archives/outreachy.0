X-GM-THRID: 6809352032264126464
X-Received: by 2002:a6b:f413:: with SMTP id i19mr1178736iog.203.1585562447147;
        Mon, 30 Mar 2020 03:00:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:3ccf:: with SMTP id j76ls5104252ilf.8.gmail; Mon, 30 Mar
 2020 03:00:44 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsUiwoKEvE9oM4yr/x9qOGdbnHaxcXtQ1Y1DlTq8WJGLi9L9G077kq9ZA4A6F87f7klfsW7
X-Received: by 2002:a92:d288:: with SMTP id p8mr10160288ilp.272.1585562444505;
        Mon, 30 Mar 2020 03:00:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585562444; cv=none;
        d=google.com; s=arc-20160816;
        b=XLKZeIQrLoVUxX9qn2Kp6UUTT87RskqEtIW1ybQnqa5VIVf4HWJwV7u/sfiHv2Y8kD
         sayNzJiHPLLazvC4jYicE8a2qJ8IzBCTvF5cNtsr3KRd0MWxD+l/Lr8yyQizscbsJrze
         FtO2h/nNZ3ECrui5/e0qjmFcRm5iSt6SsIIlXKCYnoFBk6+k7LPTzkJR9UAF8j+JTNff
         7zbdcg/F8doOtxCmr20oYoDVK4wJbN9pRDZ/8GzwDY4cXGb3xP6VnI0BOrWgbRkM8uv5
         wkgEYb9QmTPn/n/qdsmJur6AltiP3kFTDAS2L66z2kEFxpsxiQJceHSgkmo1TDrvEnLl
         Wsag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=EDbIwPgA2GwnyxuzC3/x5RBRW3+k1Gm3rD8PhaNRHzI=;
        b=ZtBP26Y/BrSvk9z1kVlndSV5B79DhkJAHAucw/D1kND1tNzFnOrQNTdTvZFHkZjH7K
         q2H3uZkA0NhbTs2Pp6RB0RHgmW/VMHKB614UZA3343Q8nW1kvMp6CVEKu3/0v0ZT8ZVn
         0cDJnRhdtqdXLZcC8Gsc9lNRTD0MPyqSWF/vIVRH3inBfYy7NlDYPy+wjQtzc7n6RIjC
         5P7ITxPz95uVy4Z4RhH6vsJdYC1tJKmP2pvuM9PkOEA0jkA8afEl/UrnzK/+HqidDKtq
         u3gVmZQ4mv5HcPuOuTqdxbROexPYPxPWi9DeGNNptFyrecLVMPNEFEu1LaFwE29mH+s0
         7wug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EH+y9FH1;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id j25si751707ili.4.2020.03.30.03.00.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 03:00:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EH+y9FH1;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585562444;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EDbIwPgA2GwnyxuzC3/x5RBRW3+k1Gm3rD8PhaNRHzI=;
	b=EH+y9FH1wxOAxEKh5V7DosPXe7ReH4sD2NpgL1AZe7VgqA9VRPgMcH9g1Fpuzgn2LHenJO
	DJ5W4Kp4OAv6KFqlRLqoXfjubkbdesrb4rTfDQpbX5ILWw6iaj0kuz+08NAHfWdmjuMoYm
	K584M1zslXOncqRr8kM7sYRkrEu1G7c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-41-AHUzNtwGM9SNU-3Pkc6wxw-1; Mon, 30 Mar 2020 06:00:41 -0400
X-MC-Unique: AHUzNtwGM9SNU-3Pkc6wxw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0A63EDB63;
	Mon, 30 Mar 2020 10:00:40 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5749C10246F8;
	Mon, 30 Mar 2020 10:00:38 +0000 (UTC)
Date: Mon, 30 Mar 2020 12:00:32 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Remove
 BBvCalculateParameter comment.
Message-ID: <20200330120032.0637015c@elisabeth>
In-Reply-To: <20200328200331.136265-1-briana.oursler@gmail.com>
References: <20200328200331.136265-1-briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 28 Mar 2020 13:03:31 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> Remove comment that refers to function that no longer exists.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


