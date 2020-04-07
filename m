X-GM-THRID: 6801392738100051968
X-Received: by 2002:adf:e691:: with SMTP id r17mr492923wrm.421.1586235076970;
        Mon, 06 Apr 2020 21:51:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f5cc:: with SMTP id k12ls1385188wrp.6.gmail; Mon, 06 Apr
 2020 21:51:15 -0700 (PDT)
X-Google-Smtp-Source: APiQypKTypbvsZQa6q+ti/nNAHLWLXHGy7XxsEDjbqqDHuNE2RM3hus/8oHImVZWBq8s+QjrnkKt
X-Received: by 2002:adf:ee8d:: with SMTP id b13mr521139wro.251.1586235075889;
        Mon, 06 Apr 2020 21:51:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586235075; cv=none;
        d=google.com; s=arc-20160816;
        b=V5OLf16c1098pTdOQdghyTZ0XDekZ5BgGQHaD1dhtJ5xgo4AR85m9Zr+otdX85mrus
         eSKHIp7nMC/Iejgjn3ksQU0nV8GxgHAGiT8RyzsrgkvF6nmoK05WdF/4ccI6aaoWWKNj
         FsvOT15Y4+2vC8q2k8+5BEB8+a5YtSr0FLeQgirN8sP3qagAh/AQG3rskWV4kq/LZIig
         UaEeGscNepm82PXva8U41O2lag6VGCWGdL9ljjLmlGVUt9CVE91FODSozSpfLI6aM6Go
         LCjgLUxNujB56K1Br47RnFy+aG77QiMFU8XdEcq0U7gFJOw6b1YrM3ePVrTdbWT7kA/8
         3OcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=wfq64dSmx5fXYAAYv3ZZyTSrFouU3F3VUeTXeDvZ8es=;
        b=H36Qss4/IY492/yQH7QUVkpQf3N1YeYyjGq1YLKqbmbK48z9mPbnmxQnuOuH1vdhla
         xD+xLSKuVusfDcCr9RUdolfhe2ReLGhakAcrXRBIMOaaccwb2skI82I0Ia3toQGpCeQi
         Y2clcxr4Rngy/3V6ednbX7ys3aMisDNECT9o1FbajMVtIRyWam4scf+ehSukpU32mf7O
         AVym82LDikgnpI3wPewgXRvE/1S67uNo3jpam1VBR5tVsk7TeDUQvzdBdnXfptAr6Lcr
         pfB5qZcUMvh6kRT+YepjSdVgi4o4afM4ktBUURcor6V3y+Sidvsefs+Aau9g0VcZhJIk
         +dxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id z84si20420wmc.2.2020.04.06.21.51.15
        for <outreachy-kernel@googlegroups.com>;
        Mon, 06 Apr 2020 21:51:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 12954 invoked from network); 7 Apr 2020 04:51:14 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.209.216.117)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 7 Apr 2020 04:51:14 -0000
Date: Tue, 7 Apr 2020 10:21:02 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Julia Lawall <julia.lawall@inria.fr>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Need help using coccinelle
Message-ID: <20200407045059.GA2848@tulip.local>
References: <284f12c6-c1ab-4f1f-a325-569a7b8bfc1c@googlegroups.com>
 <alpine.DEB.2.21.2003071102220.2483@hadrien>
 <20200407022453.GA1720@tulip.local>
 <20200407043358.14d2784f@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200407043358.14d2784f@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Tue, Apr 07, 2020 at 04:33:58AM +0200, Stefano Brivio wrote:
> On Tue, 7 Apr 2020 07:54:53 +0530
> R Veera Kumar <vkor@vkten.in> wrote:
> 
> > Am attaching the log files as well.
> 
> Missing attachment, I guess?
> 

I sent second mail with the attachments.
Please ignore this msg if received.

Veera

> -- 
> Stefano
> 

