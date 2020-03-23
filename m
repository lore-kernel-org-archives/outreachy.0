X-GM-THRID: 6807036987972780032
X-Received: by 2002:a05:6830:1608:: with SMTP id g8mr16843433otr.282.1584924438757;
        Sun, 22 Mar 2020 17:47:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:508d:: with SMTP id e135ls5219603oib.5.gmail; Sun, 22
 Mar 2020 17:47:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvXfGNoZCFDzeTxRyd6BXb4c8kyYnt5O1sjj8KZEaoPPd6S2w3tNQUbChrWKiUce/iKv4wi
X-Received: by 2002:aca:c695:: with SMTP id w143mr15501315oif.98.1584924437566;
        Sun, 22 Mar 2020 17:47:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584924437; cv=none;
        d=google.com; s=arc-20160816;
        b=nw2tKlAHgNmoRpA+AgWuXAK6VrEK1dtPe+wFNG2tSNRCfDaHNPntlq7bDs2vtCSPXO
         Iy2duc2VB8ua1oWAnS/TYmOdvvZok/xlP51ZNul+MPYjwSQdUxAtjCVSHzUwTYY7kx1p
         nG6HG7ZVf3jiwZv0XJI7HTQEUnmVRkyav5S7nFBwwpPDrDtJoSqmpuw0bwogYR10G4Ji
         RzSiQfEujCUwHx8KLuLRCHD4cLpUGBkxpxqLe58FjbslC48wysyzaBCUgUpmWxqCENLr
         WKeQrZUxV+TomQm1ypPC8B6t252NfLWHidL50aOLN6GEdK75kswrRptoud+6du+ZdXkj
         NfyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Bqd1jdYlwy80+khGEm/BJBEoBfOckNBuAcH2NKJ3djg=;
        b=HXiHPqYYUbiRLLcH0GZQZD5y4PAGP5Q1PikHgFVEmvFJlTVJ3v3gi/9Ddkxh54VH1q
         +7dh8ZAsO9+SvPy3pIoCpk29vHJhuCIT7Q3tX46gr/LqQ36hLfHx8tM9E7JNRah3BfFJ
         XVsE0ruAQl72onAu+6tSbYTED7mdDu2XnUPl26k8v9MXQw9kIH6yF9BM8cb+yKcsjqYM
         bS8BIuMN3Ztu5/0JfvcUHYxm0qe1YT2Ql2nB1I1hJ2aaIr/QcBnG7r66IwMIMW2HOiIo
         aZBErghelC+EZlm4I87QkfToH45QL/nHKJwRT83ShFHXWlrs0qA35bPQ3CY3gZHYjo50
         7bXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FE6LKleF;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id c24si727467oto.4.2020.03.22.17.47.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 17:47:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FE6LKleF;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584924436;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Bqd1jdYlwy80+khGEm/BJBEoBfOckNBuAcH2NKJ3djg=;
	b=FE6LKleFmg5Pt7Pa4T6EWRpOcwq2mcqK2FTurUPAHg8VkhqeBfgFj1oQ7bqdBd/2evbOos
	Fq0vmGlflUg7qzTlrE1JvAJHwyDg9HDs/gs1V0JVtAIpe3Ns7elotAsPsj9LrnQ/O4Pfb2
	6+0jWiDqkBUDUOL9VI0V+3TNtK8XjrM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-136-SEKtOjjhMTqwowLYzS39Og-1; Sun, 22 Mar 2020 20:47:10 -0400
X-MC-Unique: SEKtOjjhMTqwowLYzS39Og-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A651189D6C0;
	Mon, 23 Mar 2020 00:47:08 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E49F191290;
	Mon, 23 Mar 2020 00:47:04 +0000 (UTC)
Date: Mon, 23 Mar 2020 01:46:58 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 perex@perex.cz, Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [Outreachy kernel] [PATCH] staging: hp100: Add space around
 operator +
Message-ID: <20200323014658.3208c849@elisabeth>
In-Reply-To: <20200322141945.GA31741@ubuntu>
References: <20200322141945.GA31741@ubuntu>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Soumyajit,

On Sun, 22 Mar 2020 19:49:52 +0530
Soumyajit Deb <debsoumyajit100@gmail.com> wrote:

> Add space around operator + to improve code readability.
> Reported by checkpatch.pl

This is not what Julia suggested, though. The idea is that you would
post this, and the other patch, as two separate patches in a single
series.

See recent examples on this list. git format-patch can prepare a series
for you.

-- 
Stefano


