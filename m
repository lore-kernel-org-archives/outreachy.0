X-GM-THRID: 6808004693646639104
X-Received: by 2002:aca:be57:: with SMTP id o84mr2467198oif.138.1585271654516;
        Thu, 26 Mar 2020 18:14:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6750:: with SMTP id w16ls2684535otm.4.gmail; Thu, 26 Mar
 2020 18:14:13 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu+IFeCftPFNt4aMP34/fCNQU2yKv0fi1a7UIDN5QPhoNYkqkU4Or+JcmYwCQEzNb/Godra
X-Received: by 2002:a9d:171a:: with SMTP id i26mr8912929ota.170.1585271653322;
        Thu, 26 Mar 2020 18:14:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585271653; cv=none;
        d=google.com; s=arc-20160816;
        b=Gh36CQTWHgHoeSMiav30xMWSoQVEh/r4Qhlap6CmoIXgWi0KbnGeYJnsHTbxtJCIGo
         vSUKc38C4aJW3Nuj5Xtpg77FKph92vrjmlIsgKnjDEJEkeY+0Af+zinh0oSufM0Tn1eh
         clnfpiHjwHP8tUKN/AgqeanBZqOzNd4E86EX4vmw662pCFxF0N66f5J6gVtZU0lJgO+A
         ZVJ2XEOHeNYkv9NLVBW3NMqjzAPNizB/HTxcfefd5gbxLaWiJfUjiPkURicswUnXuSKc
         W2cSoX7N5ntNo9eYQpri3iW6vSx0pT1AMqIPIkmn1UTh4W7/paMdxj0WqAImOVhIKnlo
         hJuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature:dkim-filter;
        bh=ix621Dt6qjM3Vmy+f0fZ3r1ulnoR/m5MJYYDj5qeFZg=;
        b=TtjskDb8GvdeLhRvFeZ4vr1JCe7duyE9UxCpzwLRqZ5L2g+N47bsRfnQ3b+RZFgodz
         YOWcEW5A4McFRGkpn/JW6dwTGkz9wu3eSgia92wdr4sYtdMBuxIjLxdzCJsmM5uwZ1G7
         Vu1DjlM4OMyTwbKc5O1uEI05AXZzZ3s+RH72ly4GAw7yZetTCsrLUu4MPZ4+j+eURYkd
         VVy2LfHZQXQXP9mzTnrYDDbWlhAuXJP8bSbOS6zWwYs7RO30N+tfigngsyz7T/ou4BNo
         e2fwekCR8NDAiHGKxvutW5PblSGQMb38at0CvGLT1gfpyjBMadmeFJnHueCL3HnFwyad
         PKKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=pjBt8dFW;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Return-Path: <nramas@linux.microsoft.com>
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id e21si420591oob.1.2020.03.26.18.14.13
        for <outreachy-kernel@googlegroups.com>;
        Thu, 26 Mar 2020 18:14:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=pjBt8dFW;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from [192.168.0.109] (c-73-42-176-67.hsd1.wa.comcast.net [73.42.176.67])
	by linux.microsoft.com (Postfix) with ESMTPSA id 5565220B4737;
	Thu, 26 Mar 2020 18:14:12 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 5565220B4737
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1585271652;
	bh=ix621Dt6qjM3Vmy+f0fZ3r1ulnoR/m5MJYYDj5qeFZg=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=pjBt8dFWZHuLH2rfu4TVT+O4G/gvRTEgJa17H6eEzbxLEMEC9DBWxr+n7Gw7QhULh
	 JaA/ljG7Ep6T29e/ITLvVUbd0TUjiGwTRwxIbP4UvCrJA2wkV9aQlCFC5HiJhnhX7+
	 b47UHAlqs8BeEoOYvUiwOWm8IqMGtBZVt13Tg1vQ=
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: vt6655: Refactor switch
 case statement.
To: Briana Oursler <briana.oursler@gmail.com>, gregkh@linuxfoundation.org,
 forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
References: <20200325123545.GB3430583@kroah.com>
 <20200327003311.73204-1-briana.oursler@gmail.com>
From: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Message-ID: <584c79ff-3022-5b4d-e4e3-05a2a29befab@linux.microsoft.com>
Date: Thu, 26 Mar 2020 18:14:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200327003311.73204-1-briana.oursler@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/26/20 5:33 PM, Briana Oursler wrote:

Hi Briana,

> Pulls some logic branches above switch case and holds outcomes in
> variables to improve readability and reduce code duplication within
> switch case.

I have copy & pasted the guidance Julia Lawall had pointed to on how 
"subject" and "patch description" should be written. Please see below:

https://kernelnewbies.org/PatchPhilosophy suggests:

In patch descriptions and in the subject, it is common and preferable to
use present-tense, imperative language. Write as if you are telling git
what to do with your patch.

It provides the following as an example of a good description:

     somedriver: fix sleep while atomic in send_a_packet()

     The send_a_packet() function is called in atomic context but takes a
     mutex, causing a sleeping while atomic warning.  Change the skb_lock
     to be a spinlock instead of a mutex to fix.

thanks,
  -lakshmi

