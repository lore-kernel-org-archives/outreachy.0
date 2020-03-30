X-GM-THRID: 6808859565738688512
X-Received: by 2002:a17:90a:77cc:: with SMTP id e12mr3453254pjs.134.1585557912934;
        Mon, 30 Mar 2020 01:45:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:d78e:: with SMTP id z14ls14587688pju.3.gmail; Mon,
 30 Mar 2020 01:45:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt3r0RliCS9kyEZQpzmc/MsZw8Dzp+FfZ/+9Ku44AKTQiv1dbdiTnnQFQ18uv0UY1jjFwPX
X-Received: by 2002:a17:90a:30c7:: with SMTP id h65mr15403081pjb.44.1585557911660;
        Mon, 30 Mar 2020 01:45:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585557911; cv=none;
        d=google.com; s=arc-20160816;
        b=rp9Q0nJ7qLZbZ7vZ+d1MR8djJXXrWzCotkitMyKpGjl39hetLJ6kOs5X2uVA1/lM1k
         TCKTQ237+70eP3Az9Wi7RcRBuSqvCr3zAokKnMd2rVvH2QjceT9sHZNZQlTfT0mnjSFp
         P5y3frY/npX5zmVP/wz2YsHTKemFRg2stNEXzw3s7z7iW8Mq1I0lkmmHmSL+mTQ0oR6c
         Apf9SppVk9HBaHFXIFkOEhl4fNj+qJTTZn0sHt8gEEg2/mS2TJHIEH1myp+LjAJGJTns
         GiEO3/IlbNTcHICqoF+Vs/xsa0k8O/Ip9z45ewWglhuKWqGR/F7TL9UtFN0RBj0AEFzi
         rIFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=S6nvbFFLnIbiTIpYs9R62XsPWPBHFG8DTPt7ohPl+z4=;
        b=n/PQ/2kWWS3aUA+vmDeFqyQBhxQ4+H3mNc+yQyMj6HseT01eSbZvkLpqSkausgPUrw
         WcFxXDJ4H+6fuU9iQILfnO8fFA2zk79ubM3pgKT6Oa8xoX4XZl0z6ne21ObiypzYLIgy
         U+HLf3REOgldIq3os6jIcKMXOgadxwCvmhrhyJfAJ5NhtmzESj6e3iL6ihXURMpoRFcb
         iK3PQcEQmM/NePcIft9hNramBarGFpGEiyiJLjWGKuNhvojLw1ZfHepS0t9ITXH/0/zy
         K8UvA7S+MJvXkauUrESBLZpPTt5RXOTuudQnfW2M4mokKnzVhkYSUOwncODHuCLxhQ3M
         d4gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ToGITdWr;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id c207si804805pfc.3.2020.03.30.01.45.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 01:45:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ToGITdWr;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585557910;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S6nvbFFLnIbiTIpYs9R62XsPWPBHFG8DTPt7ohPl+z4=;
	b=ToGITdWr1XNPRANHU7dUkagisoeWJYx2Bv1z4/W3ndbXam5d85iYnydMye5k949Eq1rUrV
	z9XqenJ51QQFkRW6cdvAylVrOUiNfMuBhoRAu4PKC4FRPPWuR1SXwX2c8KLa79FxrlLnQL
	m5HYoGp2cw2DX2kDnlNGHidg38XCj74=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-174-HSy0EYtGOnStitspzYUh4Q-1; Mon, 30 Mar 2020 04:45:06 -0400
X-MC-Unique: HSy0EYtGOnStitspzYUh4Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73D06190B2A3;
	Mon, 30 Mar 2020 08:45:05 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.47])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC42F60BE2;
	Mon, 30 Mar 2020 08:45:02 +0000 (UTC)
Date: Mon, 30 Mar 2020 10:44:53 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Soumyajit Deb <debsoumyajit100@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Converting unsigned type to signed type.
Message-ID: <20200330104453.5276d5e9@elisabeth>
In-Reply-To: <CAMS7mKAjK8OgRzpCifKn+_17y-NzMbAepKSqnOMzRDbWLqTV1A@mail.gmail.com>
References: <CAMS7mKAjK8OgRzpCifKn+_17y-NzMbAepKSqnOMzRDbWLqTV1A@mail.gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 27 Mar 2020 17:42:22 +0530
Soumyajit Deb <debsoumyajit100@gmail.com> wrote:

> Hi,
> 
> (msg2.signal.data - 65536) * 100, /* Conversion to signed type */
> 
> I came across the above line in one of the staging driver which it seems is
> trying to convert msg2.signal.data to signed type according the comment
> provided. I looked it up and msg2.signal.data field is of type u32.

Right, but that's actually an abuse: u32 is not the appropriate type
for it. See how it's filled in by prism2mgmt_scan_results():

        req->signal.data = le16_to_cpu(item->sl);

now, there's no "p80211item_" type that could cover that, so leave it
like it is (at least for the moment). You need to convert a 16-bit
value (we don't know if it's signed or unsigned, but I'd rather say
it's unsigned and expressed as 0 - x) to a signed 32-bit value.

So, I would suggest that you write a small test program that does the
same thing, and find out how it works. Then, once you understand that,
you can think of an equivalent way to do this operation.

-- 
Stefano


