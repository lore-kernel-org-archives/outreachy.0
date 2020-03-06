X-GM-THRID: 6800460618478387200
X-Received: by 2002:a1c:41d6:: with SMTP id o205mr3519714wma.122.1583497384813;
        Fri, 06 Mar 2020 04:23:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:498c:: with SMTP id r12ls530723wrq.6.gmail; Fri, 06 Mar
 2020 04:23:03 -0800 (PST)
X-Google-Smtp-Source: ADFU+vtU9C0/3JGCty9jpKHwfBMJkjlQtNAy8XyF9eBxL6meYpboaT3P7SorzPFGg+XTfOgiJrjy
X-Received: by 2002:adf:a4d2:: with SMTP id h18mr1415500wrb.90.1583497383444;
        Fri, 06 Mar 2020 04:23:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583497383; cv=none;
        d=google.com; s=arc-20160816;
        b=lDYdp9AdY3dNX1Z4BuouHevWEthjZmZy70v8SZIH2td/ndqy7TNbVzsOESSZ1OdLMW
         9f+J881DEshDp0GOzHSqKuLE8ZeVl0PYu6ukTLzB57v2reozMoW1wsgBA2yJ6awcjcST
         oLU6fhBaAsisThhIQekI6qJ4UBDHv3IQ+7dPDrcuGriWnfv/t1XH+AVGKSgptyvP3uSN
         aWdRJCCnuKuh8QlQkPmAtmwuxmBf2U/H7PdGIrmJq/V86gE0Bv3DDoCy/h2tgzUyXc8M
         wS6rMtGafo3H3J/soWaCZAcxDbvHn5HyyPBgbkbdIINgtK+IJXBQOWsklepzk0uNPsXQ
         DXgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=qXjhs4OQGGwxxON+6UgKU3G2Eme+1501ddm8wbyOS5s=;
        b=RSpfC6yzgjR6vGsuOGPtfbFz9EBPCt5JUdSVtyjO5CAPEdx3HC1yWKZw/zd4i00+yD
         SREk/1Y7fpRauCvD96f13bhl0sIrMYwK7ocvKgj8lrf9efVjnudRmbsGtW3UsLrt2h6m
         m/Sg5+dt04CQC7ozCFQT0NhMXFem5S20iYCb2KDlsb8/V1OwcxmgDZ9Dtyg61Z6r39F0
         OjeItOalsOXeEbrySJKTfcoIYP14IuexNd8xJokKYW94PoHfETJLdIq43VTKkhukv2wF
         p5VtzrdulVgwagXz9m3w1jC3pCiPjJo5J3+k5VH9a+bc0lHZpK1IoGowSn9u9tDly+a2
         p8Ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y78si106822wmd.1.2020.03.06.04.23.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2020 04:23:03 -0800 (PST)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,522,1574118000"; 
   d="scan'208";a="341492525"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2020 13:23:02 +0100
Date: Fri, 6 Mar 2020 13:23:02 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
cc: Helen Koike <helen@koikeco.de>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Outreachy contribution period - Welcome!
In-Reply-To: <20200305135252.GA13838@kaaira-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.21.2003061322140.3947@hadrien>
References: <CAPW4XYZ43RN5nSpi8StEGy0ceR53GXfse37n1rto_BevX5mxJQ@mail.gmail.com> <20200305135252.GA13838@kaaira-HP-Pavilion-Notebook>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> Sir/ Ma'am,
> I wanted to confirm if the clean-up patches I sent in the past days
> (not aent on this mailing list) will be considered in the 10 clean-up
> patches or should I send another 10?
>
> Thanks!

Hi,

I think this has been answered already.

This message ended up in the outreachy list spam folder.

julia

