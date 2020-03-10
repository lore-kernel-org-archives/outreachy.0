X-GM-THRID: 6801918498465382400
X-Received: by 2002:a92:8c42:: with SMTP id o63mr19632709ild.189.1583860638473;
        Tue, 10 Mar 2020 10:17:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:dcc8:: with SMTP id b8ls3560388ilr.3.gmail; Tue, 10 Mar
 2020 10:17:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu2abmRTOah9ryJ7KTRHZKaqG3s4bokqgqQGC+AcUWxbedkvO8+JgAm4fQdj21BOanPEXbP
X-Received: by 2002:a92:40c2:: with SMTP id d63mr21671741ill.23.1583860637139;
        Tue, 10 Mar 2020 10:17:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583860637; cv=none;
        d=google.com; s=arc-20160816;
        b=LFZLnxmgtLzaFqUq6CQCZGNpJm1sMfGSOjWLZZ6zSGApQIYCFD9TW5NzZ5R2L2QrbD
         CUmu5v8G0lO624ofenYBeVxdPDkgjnLGGz+5wPKC4BlQrLn4KzlfFq5rdTClamAV1fxm
         IbkD81aSvRMnxu9g9W148Jkyw63Rqd86DE2nX6fl7cXMLdIQRncP9njWpCT8ikp3CIW0
         7AqgkhGeVhulQ4h83JOoqSUxGGXN4Fh3Y2XaJqrjf6jphaAFlbuvFCvrV1eyriCdOmfi
         eQC6N4HH9boFphksMtCb9UVVdGc64rqPld8egjuj2+ftU+r2X4aZ6r0G4+/eMbN3M6Dq
         B+pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=BMAEwj+lyOoFV6cTegq/WkIWpsp3B13SqP1TdAaTf5c=;
        b=pDqZbnop5y4TjJJ5ElNbjBbwLDLalJ3wbTrdk7MBMu3XhRzpvTFd7hOS12vxUrHaG7
         +XV2TBq6J+ehnGGVu128E/unWgiDr/iJfsmiE+Ux2vvycIUiOkTXmtxIF0ko2KEuRAXl
         GQi8friDEyY9heo1oVEcFO0xHh3AAj6HHymRwJMNpHvK3Zzi5S7PPBsoHktqCsDuaG+e
         UMDQO7LZZbNdfu26hPgRq3aJbHvnv5f06Xc8LOaaCkAG7RVhD0vaiRNGxBsYRL/rhfzM
         vzZs61GwtCxfY+5sW8gLrw4idVWRA8cdUE7Q/fR/n+ewh1wQIdahTSqPweyYN710TFoS
         0skg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bWDQkqbO;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id d26si736212ioo.1.2020.03.10.10.17.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 10:17:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bWDQkqbO;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583860636;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BMAEwj+lyOoFV6cTegq/WkIWpsp3B13SqP1TdAaTf5c=;
	b=bWDQkqbOnds/QNw7LipIwdRKLNa4fdZ6Cu3BGhokgglwUzUQhFBOZQf5fzkpK9iTA3ndWp
	/ChQTAQ8SlApu4f110lR5pMy80NmtDh9UZ4/0pF61OpyHjmr3upbSymFcAZKx42lfdjKVr
	7tRrIx+07B/3y0URsbvjxDGYG52KZOs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-248-ZX76XRL_PQ607-Q928Fj6w-1; Tue, 10 Mar 2020 13:17:12 -0400
X-MC-Unique: ZX76XRL_PQ607-Q928Fj6w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9CAB8107ACC4;
	Tue, 10 Mar 2020 17:17:11 +0000 (UTC)
Received: from elisabeth (ovpn-200-42.brq.redhat.com [10.40.200.42])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A286060C99;
	Tue, 10 Mar 2020 17:17:09 +0000 (UTC)
Date: Tue, 10 Mar 2020 18:17:03 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org,
 outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] [Outreachy kernel] staging: vt6655: remove line over
 80 characters
Message-ID: <20200310181703.299d2e41@elisabeth>
In-Reply-To: <20200310123229.2424-1-payalskshirsagar1234@gmail.com>
References: <20200310123229.2424-1-payalskshirsagar1234@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Payal,

On Tue, 10 Mar 2020 18:02:28 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> Reformatting code to not have lines over 80 characters.

The change looks good, but the subject (that is, the commit title)
still doesn't match the contents of the change. You're not removing,
and it's not a single line.

Also,

> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
> v3: Change in patch description.

This should be cumulative, that is:

v4: < you know what :) >
v3: Change in patch 
v2: < changes you listed for v2 >

Otherwise, reviewers and maintainers will have a hard time tracking
your submissions. Thanks,

-- 
Stefano


