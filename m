X-GM-THRID: 6803435195586314240
X-Received: by 2002:a67:d706:: with SMTP id p6mr16280145vsj.143.1584308758016;
        Sun, 15 Mar 2020 14:45:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:f315:: with SMTP id p21ls1977621vsf.1.gmail; Sun, 15 Mar
 2020 14:45:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt6mO90kny3p7Q7xGG2SNFv2Q1Dkn1fbhTk8EU+syZz2RoTC/jL6EeiX8Wbr8U+PK62ZeNR
X-Received: by 2002:a67:320f:: with SMTP id y15mr16632278vsy.157.1584308756747;
        Sun, 15 Mar 2020 14:45:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584308756; cv=none;
        d=google.com; s=arc-20160816;
        b=uT8SGBxVjfms7hBknfERlHvx81Y3ZReX6A+c7TkIWidNACIVae8EcXpe6lb/MRpmz7
         2edfuIPRyoB6EN+zNYds9JFMZZjN0eyFtVhZI5ZGeP4+TBRynZh7ez6zQh2b7XB6uEzF
         ZV4u+rt0agHvXT8GKNZr1sC3BRqL3Z6WQ/GNkmUS61/MIAb0/eri58rgrcmEWCTGDvZI
         IUJuMs/maoEeK+wPqFDhKE3lphtba4mzCoL3KU/80UPuQMuhk2Zf6aB8ZW8JaZNyXxPR
         mWqSPpa0NClQgMfu50xkS6tVKAohj3z5wmvnL9g0q9yJXTdlWJt76Sfje8vlUCRuekRw
         C2BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=uJWlfxWIteENhVXm4we9Kl5jfQ6qMoUE2BgPu1vVTK8=;
        b=hJIkXSP1rEFHXleABoOWnsCnCJ++vfXzjNeSB2GK+RNcGb+uef1lY0cJuNefDV8uP6
         /8nWcYrHKkVeEJsHGm4yrClflQgD1Dlfq+EZ7Gs1uNlbPcvTEXgiksjFtBsKRHufz8V1
         DoJVM9QgXGwTqHsOLKLNuO35VDTPq3PhF+0s3ZE2e+RrhKREDioCI7jsItjkPgL74A/R
         aN+s80RE7rruLkEMHRVBiG7gG+p7BexnUp1QhNK6V2ISelk31JcgYmp8a8v+4S+ouXVb
         2YQo86jjNRa+IXRxRzxA20UUwjVW4byvl0epj47zklkTNcxa0re5urIjCyFS7nPAnvBm
         mFsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=B+mK0fYh;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id w12si453105uaq.0.2020.03.15.14.45.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 14:45:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=B+mK0fYh;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584308756;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uJWlfxWIteENhVXm4we9Kl5jfQ6qMoUE2BgPu1vVTK8=;
	b=B+mK0fYh0fm2YspVi6hKKIRMfVdLKf3InuPffAdktGHJwjCUReVSJV4Z/bOwUNcxRFXpYt
	+egItV5eGIMkojFuPkkYzGTRIRcHMhtAmq3FwLjJFPWHvNOq/BHuB5pbyqvlZRYXneOq4S
	XIbfwbbqeANfACDi+/lfGBcxD5BbsQg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-254-zfa1eZe7P4WoYVT78h5pvg-1; Sun, 15 Mar 2020 17:45:54 -0400
X-MC-Unique: zfa1eZe7P4WoYVT78h5pvg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 60683107ACC7;
	Sun, 15 Mar 2020 21:45:53 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6450A5C1B2;
	Sun, 15 Mar 2020 21:45:50 +0000 (UTC)
Date: Sun, 15 Mar 2020 22:45:42 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/4] staging: fbtft: Reformat line
 over 80 characters
Message-ID: <20200315224542.638e4c40@elisabeth>
In-Reply-To: <0fbcf3ff3a2b31a643293c0098d70f54e994a405.1584105606.git.mh12gx2825@gmail.com>
References: <cover.1584105606.git.mh12gx2825@gmail.com>
	<0fbcf3ff3a2b31a643293c0098d70f54e994a405.1584105606.git.mh12gx2825@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Looks good to me, just a few typos I wouldn't normally care about
(unless a patch is fixing typos), but as you might re-post this:

On Fri, 13 Mar 2020 19:12:13 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> A long variable name beyond 80 characters gets exended into the next

extended

> line. Reformating the line makes it more readable. Also adding an extra

Reformatting

-- 
Stefano


