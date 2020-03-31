X-GM-THRID: 6809468497850007552
X-Received: by 2002:a05:6830:403d:: with SMTP id i29mr10221008ots.353.1585612882465;
        Mon, 30 Mar 2020 17:01:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3985:: with SMTP id y5ls7288672otb.7.gmail; Mon, 30 Mar
 2020 17:01:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvnO8jCjhzMU2l4p4ZwiN3vpZzxZC5HddKHD4di38zOwadJlCa8g1S5z+/gUpwGRJYBqeA+
X-Received: by 2002:a9d:6341:: with SMTP id y1mr1294703otk.40.1585612881317;
        Mon, 30 Mar 2020 17:01:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585612881; cv=none;
        d=google.com; s=arc-20160816;
        b=Bb+fc5KQgOiRe9FanSBLTY3beSzUkjyhbeUpAyHb0mG7g4yeh+zolPcMboMWrs2gg/
         58VkB6AgQztr1GAaOwHl7hNwusBO9aTh57BdXHKnj/mswPT/sns+ukRpC5q+huzgclrx
         k+DJ4C8m9gfOdzk9TMxL+farmaLkl2QWqC76PCw/cIr6M6xxhcLHJCmZU0pRAlQyCseP
         sf66R/46osMewso5C4b/JzgeFgNYT4YraAWQpjYEFLhzPyZMaz/KnLwL47x1hjh9AaqG
         SH+nwu4D7F5UYttO8s5W31EkLdNcb+hS0hM7JFJHr4LqqEqD7+KLko1NW6i8EW69JvjF
         vPgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=XWMGIyM+EQlmNpNdyc1krEzJQU9C++X/ouqCdGDz9GY=;
        b=DR6ZZf8Fv9plzuww5WiNJHtbYhvO2GJJ9iSgxlwM6YNXU35KKF0KKYb+F0CGGQbJYz
         FpjElTKrsenTwdvDcO9RqBOngVAibYOrhoqz4MqoPQ+aBk7PcUoETi19Ra966vRmafdW
         mxFNEfc9Mu46ZQc1oNH8xbCtIFiOlBgfqfCeiGxgPYvu0swlKwkI7zmgRfITiupUq3dS
         opcMa4YFLNKIPvV8rS1bIJtYUmFtLvb6PtRYHxwQ8X2yoosiFoRmeYNHCjdk+JvSb8+H
         5SakN1iagkktP8bmt506uY/n7hYFeGRphIbyAqouc9EglOrAAuY3B2F7bZZ3THyjw0VB
         qjig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XOXEiEAa;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id m132si1151414oig.3.2020.03.30.17.01.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 17:01:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XOXEiEAa;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585612880;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XWMGIyM+EQlmNpNdyc1krEzJQU9C++X/ouqCdGDz9GY=;
	b=XOXEiEAaKLL/qWGDodJinds4T46g/a6BWON8Cvzvzytci53i2ANmGaFSRk0bFGAEA+2Soc
	oPx8rq0/KVVmu7drtENOaWuAgOD0dlYnIdI7FwtYos3tnR8OmfySmLHX/oPL3bEntZGFg1
	TfJrAHHY5qX0UcjKWxn+H1pj/PoELGE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-237-9ovAUwVxO5em1mdQuZEQdA-1; Mon, 30 Mar 2020 20:01:16 -0400
X-MC-Unique: 9ovAUwVxO5em1mdQuZEQdA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E4B41800D50;
	Tue, 31 Mar 2020 00:01:14 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6D362100EBB6;
	Tue, 31 Mar 2020 00:01:09 +0000 (UTC)
Date: Tue, 31 Mar 2020 02:01:03 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Forest Bond <forest@alittletooquiet.net>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Quentin Deslandes
 <quentin.deslandes@itdev.co.uk>, Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8] staging: vt6656: add error code handling to unused
 variable
Message-ID: <20200331020103.13008f53@elisabeth>
In-Reply-To: <20200330233900.36938-1-jbwyatt4@gmail.com>
References: <20200330233900.36938-1-jbwyatt4@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22

On Mon, 30 Mar 2020 16:39:00 -0700
"John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:

> Add error code handling to unused 'ret' variable that was never used.
> Return an error code from functions called within vnt_radio_power_on.
> 
> Issue reported by coccinelle (coccicheck).
> 
> Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
  ^ This should be dropped unless Quentin agrees to this version as well

> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


