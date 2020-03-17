X-GM-THRID: 6804214248261025792
X-Received: by 2002:a17:902:d201:: with SMTP id t1mr4114641ply.312.1584447780887;
        Tue, 17 Mar 2020 05:23:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9911:: with SMTP id z17ls3826866pff.5.gmail; Tue, 17 Mar
 2020 05:22:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtJgWXKUW5InbkvUUA+JvcyW2tGFpi6qttlOqk6MJnPaoBOuL9sbkdtYlXHhQN5JPf0vAMB
X-Received: by 2002:a63:a069:: with SMTP id u41mr4821286pgn.3.1584447779374;
        Tue, 17 Mar 2020 05:22:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447779; cv=none;
        d=google.com; s=arc-20160816;
        b=SGRX7vfEEC5mS1dix4X6YaNASvF7NwMOLh2d6vPvy5qX2cN4AlGOSbCdWaFJxqwCUA
         dbTGvLKrb07uzhQVFhnwULp8s1w7T8EzNSL1SUpWnj1gRYE840og79xuLvEZqNbR1iNC
         lluUzGZjZ1EGuPKUMJ291819aXYJv4YguRh1y99GtB9J38PXg07SPJf7NMfo5huhwGh2
         YMUp+9vzChw66zuKU05xKwwo+X8D2clili4nCvcluF6Ul+hRGrixz6oisi2AssGClx7X
         0XW1DD6f9KnmZrocZhLTKDq5+tjARhLUbroR0t4L/+ZoNCfQ2T5VYK3GZdUBs1JQqnqx
         t/yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=hfozA75RQr5MIt8q9ltlcj8hhCgbu52YhbcnPWvIvfE=;
        b=TjPBhNHLHZwdUo9PUAntt5Eaoq74OyZdpliQ4jrV8qj+8eaKOUYs5UAV9jfejgFGx3
         8M5q5gakP6JBY8G2jP19xtd5w/+R/zjevMndVzdkJUFGquoCgqOKqCf8OhyticsdAv9R
         OWs8J57QpNH4FTnU1eDvXlCjp4Ty1Wa0JrIBHIGSscRmeLmfb0C5T9m8VEU8djury1d5
         8vHX5HVhBjBZqwoUbpEdAKu9sXuxMbFbWfvfH2nn/tTk3GEFkTYB1NZKUbj3xidWHPGR
         xyOWlkrVyAA2+N7lWixeCs5TlkDk6DoYJqyG7PEohxuDP4/lh8D0bfLawd02RNlB4BRA
         kr7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Cm48Bj/w";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id ml9si203864pjb.2.2020.03.17.05.22.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 05:22:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Cm48Bj/w";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584447778;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hfozA75RQr5MIt8q9ltlcj8hhCgbu52YhbcnPWvIvfE=;
	b=Cm48Bj/wVTV6QA8kQpW2PfqQ4G+r8WC9R/jfIO5GPoEjGxvnNPWjRtZ1oSIuSukQLxVryO
	c8OBZf1nBcK9OcehesWl6CUuIJqYjLTZDXnjWAL9ihN98AX/E4evW8lIoadSP8UNw6PfHQ
	jx7aRYjJf8yVyvB/cQX4JN5hj2Ws2Q0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-447-dQ9hkyxAPV6RttW2ETCFUw-1; Tue, 17 Mar 2020 08:22:56 -0400
X-MC-Unique: dQ9hkyxAPV6RttW2ETCFUw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 740AA800D50;
	Tue, 17 Mar 2020 12:22:55 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18F325C1BB;
	Tue, 17 Mar 2020 12:22:52 +0000 (UTC)
Date: Tue, 17 Mar 2020 13:22:47 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 GR-Linux-NIC-Dev@marvell.com, manishc@marvell.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: qlge: qlge_dbg: remove
 unneeded spaces
Message-ID: <20200317132247.52f84f6b@elisabeth>
In-Reply-To: <9a7c4bef601322c2c4d58d09b277a4a6ab82bd93.1584228792.git.lu@pplo.net>
References: <cover.1584228792.git.lu@pplo.net>
	<9a7c4bef601322c2c4d58d09b277a4a6ab82bd93.1584228792.git.lu@pplo.net>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 15 Mar 2020 00:46:07 +0100
Lourdes Pedrajas <lu@pplo.net> wrote:

> Remove spaces after type casting operators in order to comply codding

with coding?

> standards.

I personally don't care about typos in commit messages unless it's
changes that fix typos, though.

-- 
Stefano


