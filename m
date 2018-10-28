X-GM-THRID: 6617179960834523136
X-Received: by 2002:a5d:4b4f:: with SMTP id w15-v6mr1637394wrs.20.1540758909546;
        Sun, 28 Oct 2018 13:35:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:32c4:: with SMTP id y187-v6ls1204293wmy.11.gmail; Sun,
 28 Oct 2018 13:35:08 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dJRR5GC8e7S6/2L9KPVKdF48pysZofB8HjvpxybwXEHL9pQ9jFR08w5pDDw2Zb3tnUwrrE
X-Received: by 2002:a1c:730c:: with SMTP id d12-v6mr1811104wmb.10.1540758908803;
        Sun, 28 Oct 2018 13:35:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540758908; cv=none;
        d=google.com; s=arc-20160816;
        b=lskSfwiKyOuWbAzqN1vndjI1Jf+ZfXt/9NyXdoA/ihq7xGsHcLGvql3hEYwxrOhSr4
         ZmqAZ6moGFbAdNzSLerMfSmgc5lO2ACaU716pyyEMVRVx3jjjH5hGipDbYRvuzfQH/Uy
         l9xRZfsJxAt+9WKEEORmnKHmsLB0K3A6Fck3MF/WcqUQh0jvv+YQYlCulIfA20rUOssv
         DOoI4mANhXlrDKSTTePvBFQkz2oTQt68QF4/t2WzSzHl62sDTfT2x3dc4SXgn2++ssix
         4KtR3KuRg2syJKC/7LWxlPvuhs6Z7pyowRrjYR/qNwQc6rPhF2vOoxBotgVZowrRO6TW
         vctQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=OJDi3CFXBIHIVmnz6E8AasPo1jXdqcsWoOiyDz+x8aI=;
        b=aMnJEDZS/TCz/Z/SoaCH/duaJH9sfaBnenKtqHlLFZt/72wlLUXCDrvAazjXjlOjmC
         HinMRf8LqTAzc9cobPKmxbpyIV070ki7xzel7OFC/muNtbmS1gbfxw5YWOS5OFvi7cxx
         0OgSAD8Lq0DxStpKQeVQEp2Jd8ZrVZXjGh2wVtamBs3o4/LP39NXGPGRWdA44cBIVU4Z
         3pPufn/cbxVDOhcLrrvSp/8xlHuPh/0mZ+Kf5eLKVQkGyqd1kfufm6BQBlRMTW9znE/U
         F/vKLXF15F0Lvn4i8mtHOLGpo/xepiaep3QrKsPXHTZKFL2UBN48D5PDr//1qNDZfveU
         WX+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h74-v6si441228wmd.4.2018.10.28.13.35.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 13:35:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,437,1534802400"; 
   d="scan'208";a="283567443"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Oct 2018 21:35:08 +0100
Date: Sun, 28 Oct 2018 21:35:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] FirstPatch Wiki Change
In-Reply-To: <20181028203130.GA6859@kvasir.local>
Message-ID: <alpine.DEB.2.21.1810282134320.2433@hadrien>
References: <20181027231742.GA11614@kvasir.local> <alpine.DEB.2.21.1810280627040.2450@hadrien> <20181028202052.GA21843@kvasir.local> <alpine.DEB.2.21.1810282127140.2433@hadrien> <20181028203130.GA6859@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> > I need to know your username.  I would suggest IoannisValasakis.
> That's my username already :)

OK, I have added you as a site editor.  Please check at your convenience.

julia

