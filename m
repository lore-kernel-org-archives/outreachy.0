X-GM-THRID: 6810515093003960320
X-Received: by 2002:a05:6830:1dfb:: with SMTP id b27mr14463741otj.89.1585710413680;
        Tue, 31 Mar 2020 20:06:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c441:: with SMTP id u62ls7431150oif.9.gmail; Tue, 31 Mar
 2020 20:06:52 -0700 (PDT)
X-Google-Smtp-Source: APiQypI38AYfbejIkmmnY0QdnZbHTpHrL/UeEXyJR99ZE/6YeG2hk3XTs3Ws4FwxJKrZGuWl9Zwe
X-Received: by 2002:aca:4997:: with SMTP id w145mr1438790oia.58.1585710412666;
        Tue, 31 Mar 2020 20:06:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585710412; cv=none;
        d=google.com; s=arc-20160816;
        b=tgDa0uo1pr5bUJnVXdicaYgUKyPbc1CcQHKi2OpVk/2Qqe0eiEOTTgybofMBZqGksp
         gEWIAt2FBmDZUbermb+F2TvzDbwunoNCFr3wSnUYQ8tIHRAjxyNq7YEfNjv6ZugPwkRb
         NmfkmtTH4uOkUWWqdbCmM01nal2YI7UF3bQlDsERDANVnNR+oPrO9PjR/Jntxe5caXpH
         SBh6bft12XV27YrHaWyBd9p38gtXvUnqpy+hJrzUKfaUCvS96/Qsq4BiGaajR+oDzkTz
         HzIQxcp/cenYlLH4FfexmtExcUWg3abhj+SObMIS5ffDRYDmRjht8kU33NFFMIaHcaFX
         PylQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=PxIAJqPOcGODMol0Sce+/JPMpI7BFq0cPsWCYOuZH9Q=;
        b=VGUvQlyJuCi6d4K4PzpGiPKNEhJrr6ENEvHQAGcu/kWz1ChFjS0nlidVs1DAqNHghn
         wnQH4oEcOLnBPR8j40UyD3z4hYi7UwwpZ0dopaAaMHoZCEC6NHREX5VJCaFEimwFZA1Z
         9V69PMOOjVuygfS/BgbKim3oWxtSBirAp6Xx8XVmo+qv/q6OFk2ocSbLd3jClr0C8QpG
         tyWQy4s2slgtxXPpv/ZqyGdUkvI/JVIQGlhZyqHJbPe7MyqTY11SAkxbMtJkWM9nDSVb
         2x1zy+AVtYwVrfCvDMdL9myIwVHPbfajnjPRliCm8dhtbhQ8VBt81BcTczh568Dra7oh
         mxhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=W1ElU9x+;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id p29si42022oof.2.2020.03.31.20.06.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 20:06:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=W1ElU9x+;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585710412;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PxIAJqPOcGODMol0Sce+/JPMpI7BFq0cPsWCYOuZH9Q=;
	b=W1ElU9x+S2KXc7JeYGFW8R3g0Uge93d9OeZLyS4THEYxMpL0ibjiufdyExYy9kNl59QC8T
	SRL3jNPwtBnCxcGyygS8rUutuA0VAZs5Nzv6Py/Aoj+78JDaug0d89HFxJiOzLm1qew0dD
	XIY+LKOFsMP3MOgCkMrnyejRlrN3QCA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-308-wuKkGhz-PWGOfA79Tz1gCQ-1; Tue, 31 Mar 2020 23:06:50 -0400
X-MC-Unique: wuKkGhz-PWGOfA79Tz1gCQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D1B25190D367;
	Wed,  1 Apr 2020 03:06:37 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A7FB319C6A;
	Wed,  1 Apr 2020 03:06:35 +0000 (UTC)
Date: Wed, 1 Apr 2020 05:06:30 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: julia.lawall@inria.fr, gregkh@linuxfoundation.org,
 forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Patch v2 2/4] Staging: vt6655: Move rate
 determination logic.
Message-ID: <20200401050630.2136d5cd@elisabeth>
In-Reply-To: <ba87af8a2d28d5737c6d8888bbda143aad723d2c.1585694821.git.briana.oursler@gmail.com>
References: <cover.1585694821.git.briana.oursler@gmail.com>
	<ba87af8a2d28d5737c6d8888bbda143aad723d2c.1585694821.git.briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 31 Mar 2020 16:16:44 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> Factor rate setting logic out of nested if-else statement to prevent
> code duplication.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


