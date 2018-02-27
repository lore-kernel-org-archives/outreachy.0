X-GM-THRID: 6527234917858803712
X-Received: by 10.28.227.5 with SMTP id a5mr107294wmh.7.1519740763470;
        Tue, 27 Feb 2018 06:12:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.91.212 with SMTP id p203ls343772wmb.1.gmail; Tue, 27 Feb
 2018 06:12:41 -0800 (PST)
X-Google-Smtp-Source: AG47ELvcZiw6/vqlBMxwyJ2zEkKU0qOdjjWAbrTc0Kl9V2Qn+Lw//uzC7OTc8/gyPD7UFCE88QhW
X-Received: by 10.28.153.194 with SMTP id b185mr1506710wme.9.1519740761541;
        Tue, 27 Feb 2018 06:12:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519740761; cv=none;
        d=google.com; s=arc-20160816;
        b=M89PRkwH6wkNC9QHnPAhkPH82rQsVn2bUKm0GHTmwEo5UuMD956opFBE63s4BvowfQ
         qD/vu3/9FXsYDzUzZ/trCfc3JFbhc5RxDNC7lBOr3+X2Ym6Ez1hDA0ALacVU3FZHOXCm
         ftXUejEkxbghgi0+xW3rIYC8unMCS3a1tAxo/zp+6g2hrQRDdu8Cn5zuuBRfNqA4a7oT
         zTaYyf8lOy4G0iZgeqnd5UjsH0hsYgpS4kVzHj72QoYnVuVRQ1oyVoQQpXiFAVIn2vue
         DbU6Oj+zEZ3UJZEmKC7kJH0OlLgsRhcChN07UJXGzdolhPSGL4rsLUTf8PXYkL8cfxqz
         Namg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=/NUhP+6Zz6E1XIEfXa8/4BYQcSkZ31h8kTODeqM1q8E=;
        b=gPm4QVfYdAKNh5FrxfJISN22psuj1Y0/cNYPFxZkwdgcZdoNj/ELulov1nswzTzUSU
         ZXtSISR4g1QXt70PBpJCN50kizMNLwzk1WK8isXrVi2BUo6Wuw+JL3IOsFcoOOjczxF2
         yjwnohGvQvZWZGHlIJDkGC0LpwWYsXdAOzlLpqkSGsDfJSc0MrY1VMCkmKjAJ+GGmNMZ
         4BYX0CWVCJnXh21paOmv5u46uflKKMc1LgF36GrsX0KBzQZ0T+k8zuXgotdODDLDYWDR
         z2FB4FzlNbwQOf96Rd0J7qA03pIK5EfmmPmycdKHXz0EEaTrqcDXK2wCO/zHduzAf63o
         Hegg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i44si429346wri.1.2018.02.27.06.12.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 06:12:41 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,401,1515452400"; 
   d="scan'208";a="256267791"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2018 15:12:40 +0100
Date: Tue, 27 Feb 2018 15:12:38 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [IRC] How do I join
In-Reply-To: <7597d005-1a8f-486e-a706-25f99b7b126c@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1802271511460.18318@hadrien>
References: <7597d005-1a8f-486e-a706-25f99b7b126c@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 27 Feb 2018, Nishka Dasgupta wrote:

> How do I join the IRC channels? Simply clicking on the links leads to
> "Problem loading page" errors on Firefox (Windows 10) and Firefox (Ubuntu
> 14.04). I apologise for the stupid question; I have never used IRC before.

Maybe try a client such as pidgin.  There is "join a chat" in the
"conversation" menu.

julia

