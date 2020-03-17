X-GM-THRID: 6804214248261025792
X-Received: by 2002:aa7:8087:: with SMTP id v7mr4853113pff.96.1584447819525;
        Tue, 17 Mar 2020 05:23:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9887:: with SMTP id s7ls11590978plp.9.gmail; Tue, 17
 Mar 2020 05:23:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtZwhwpBQoHOHinUFSd0SfzmC9jNQUSFRRmg+hIBVBIwwzGpIePDnEJJ/4X907dRJ/v47Mo
X-Received: by 2002:a17:902:a70b:: with SMTP id w11mr421043plq.59.1584447817977;
        Tue, 17 Mar 2020 05:23:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447817; cv=none;
        d=google.com; s=arc-20160816;
        b=Vem2FLqODj3EB0ZlH/AEcgm8zQkZfBwZwCiArmGjVzgR5qoSbh5xmAJNtFrXPix/Dn
         1ZkRJBwBHSb8t68W7LQvlDwQtTNkfR14jLmq+c3imhfm3bbF0e1kNykMf7hxbxTMclly
         hSfQSefkICqmoviYXrKwdFAAo4yeqhcwEghCy0Jm8TJ0obx8QNTxHkvtIZ5bcOtco5zu
         xO7otlyt6Rz02+pwApFz7gsZpNNCpUeak+mGbfeYym0Ad9MxUl6jfgfoMMRLQI8ZA+ud
         ifOU2dJOTII96h+4RAmCOC3bngkLCpnQ2jbpT1ONviXIH8DFNy2UeXJ5RG/Vjz/eSh1a
         cNlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=ykmg0VxgCGOUaAToxbhv/I2R6Ksw0zXQeISUTYI0VTg=;
        b=m8zyExzm+7dTCiQD/jxrigUSf7zN6InlhVIApYfXhwWt/IbnXpg8ws35I8rb5wPO46
         s0jMJK1Oa38y9e3KbheTxQdhbCud2nyyuoO7AxNw6ZZmSaBWaGWu/Y3i/60keElbTJzR
         9kpJOMC5GfJhQ8TTTGxMGF45R68gdMOJ9a8Aoq3jeqaj5c4VLXelHAoPFCzL54p2vcnt
         cNQ6FlW88681ISk8ODTjUM9zI9WHbi13De4JWLgWWQ1TdNzuU47nSCV8N8/poygnGsNW
         cdMfIYB3u/QH+jJywPNCw0imdJYuGu/g5PPia7dPflNxOYj4xIvDNHmimnh2TXrPi0FE
         syMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=F+Sf4bzy;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id i19si622065pjx.1.2020.03.17.05.23.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 05:23:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=F+Sf4bzy;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584447816;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ykmg0VxgCGOUaAToxbhv/I2R6Ksw0zXQeISUTYI0VTg=;
	b=F+Sf4bzyfuqXZ4d80jrZQlxldmaUKJzkxTFsCUn3nZocRkP/1RGm9+pUAjgCqxlumpLHaH
	Jy1qDqJwTYICw2HdgLMHy/K6r6Sw7q38ZQcx6FJOZyDGTbiiKSQuzk71GUEgvXQZ2I4HZV
	XUNqBf8D0SAidViiANxpN8+8XcUn4Qc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-257-6yl6iMDpMIa1MeFV4pN2Eg-1; Tue, 17 Mar 2020 08:23:33 -0400
X-MC-Unique: 6yl6iMDpMIa1MeFV4pN2Eg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DA536149C0;
	Tue, 17 Mar 2020 12:23:31 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EE52319C58;
	Tue, 17 Mar 2020 12:23:29 +0000 (UTC)
Date: Tue, 17 Mar 2020 13:23:23 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 GR-Linux-NIC-Dev@marvell.com, manishc@marvell.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: qlge: simple formatting
 cleanup
Message-ID: <20200317132323.5d276044@elisabeth>
In-Reply-To: <cover.1584228792.git.lu@pplo.net>
References: <cover.1584228792.git.lu@pplo.net>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 15 Mar 2020 00:46:06 +0100
Lourdes Pedrajas <lu@pplo.net> wrote:

> Patchset that performs simple code cleanup in qlge driver.
> Some issues found with checkpatch.
> 
> Lourdes Pedrajas (2):
>   staging: qlge: qlge_dbg: remove unneeded spaces
>   staging: qlge: qlge_main: remove unused code

For the series,

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


