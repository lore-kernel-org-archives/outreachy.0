X-GM-THRID: 6253287344425664512
X-Received: by 10.107.157.9 with SMTP id g9mr18919336ioe.26.1455975704244;
        Sat, 20 Feb 2016 05:41:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.34 with SMTP id f31ls725360qge.76.gmail; Sat, 20 Feb
 2016 05:41:43 -0800 (PST)
X-Received: by 10.129.134.135 with SMTP id w129mr17540231ywf.24.1455975703530;
        Sat, 20 Feb 2016 05:41:43 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22a.google.com (mail-qg0-x22a.google.com. [2607:f8b0:400d:c04::22a])
        by gmr-mx.google.com with ESMTPS id y131si1008364ywc.0.2016.02.20.05.41.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 05:41:43 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) client-ip=2607:f8b0:400d:c04::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22a.google.com with SMTP id b67so82341835qgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 05:41:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=95knh9NetNFh7LT5KkIfuPGAfPLPHUGtfNkfYLkpacY=;
        b=fdATz6G0wDIYMlSDCPY5qX/+9vw0iFtpiGlC3g4EgpwWxu6NtEbnbFQfUubgE1PK14
         zAg6APRHaFb7dAHm23Ku4N7MXLcjFk5ytFFdtoie25GqVEWmiqrqpC6l0WwXtf/m99or
         ZAx1XFrX9gbhbQwA9ztTJ0jcjYmN4hiTW7iuUbMoPNbP27ItTc29vnDEVPba5F3rlW3s
         8eEpPFdX4QJe1YjtM9zKNmJIp5SI0uw05cHJTsYEweCHJCUE3MRj9iu9nzbl6GeWODjf
         gdq2OvdCr1UjKXpRenAjc7aQwodj4b4D9PROGQBngQnrCPN0wTAWmpk9oUOQ+ZRKXA9I
         rFnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=95knh9NetNFh7LT5KkIfuPGAfPLPHUGtfNkfYLkpacY=;
        b=jL5lwg7Q0zCDOVMEae7H+1qGg9oojQdhUc07ka3KUB5mNWFvozmNC1SFwXNlLQTY/U
         i/sC34nTAlScVBCCdW83Mycm6ZxLS3f31SBn7pVtiQUhVdJ0f/hGWw0KCYIIfjMjJZwF
         XMDiZTVuSAbe5vsk5/N+ngyPDKEjRyONSEqahSDVroS36wQ4DKMChggl5MEPGvWAmbWc
         egjdG4puyOQIKaNJ44KZChmZ27HW/KdNA2HFV5CllWP2tL7kul0giOXoxYdRFIGydSdx
         LN1tpkmOwk4XJe9Fl95Z669/TzzI86Jm8iQj2GRqvK+y0EweJm7chI6c5wS7txTP/ARV
         tt5g==
X-Gm-Message-State: AG10YOQjZ0xpqMg+RUkXfgSYzTNzZTjjJJ4rxs8jdO2brukmtriEqfzJsQMuqYljhjBmrCf4xlf8JafBvfXS4A==
MIME-Version: 1.0
X-Received: by 10.140.143.68 with SMTP id 65mr24813801qhp.25.1455975703381;
 Sat, 20 Feb 2016 05:41:43 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Sat, 20 Feb 2016 05:41:43 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602200833090.4083@hadrien>
References: <20160220082827.GA14902@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1602200833090.4083@hadrien>
Date: Sat, 20 Feb 2016 19:11:43 +0530
Message-ID: <CA+5yK5HpAQVmcOMtyto_qdU=sMtrTHodKqX-54GzsZkMrJx-pQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: hfi1: Use DIV_ROUND_UP
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 20, 2016 at 7:03 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> // <smpl>
>> @@
>> expression n,d;
>> @@
>> (
>> - (n + d - 1) / d
>> + DIV_ROUND_UP(n,d)
>> |
>> - (n + (d - 1)) / d
>> + DIV_ROUND_UP(n,d)
>> )
>
> If you put parentheses around n and d in the above rules, then you won't
> need the two rules that come after.
>
> julia

Like this?

// <smpl>
@@
expression n,d;
@@
(
- ((n) + d - 1) / (d)
+ DIV_ROUND_UP(n,d)
|
- ((n) + (d - 1)) / (d)
+ DIV_ROUND_UP(n,d)
)
// </smpl>

Amitoj

