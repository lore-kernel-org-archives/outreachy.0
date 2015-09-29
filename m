X-GM-THRID: 6199821821107240960
X-Received: by 10.107.163.80 with SMTP id m77mr23227601ioe.0.1443508505966;
        Mon, 28 Sep 2015 23:35:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.34 with SMTP id d31ls4518301qga.59.gmail; Mon, 28 Sep
 2015 23:35:05 -0700 (PDT)
X-Received: by 10.129.74.198 with SMTP id x189mr10349780ywa.53.1443508505529;
        Mon, 28 Sep 2015 23:35:05 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x230.google.com (mail-yk0-x230.google.com. [2607:f8b0:4002:c07::230])
        by gmr-mx.google.com with ESMTPS id r189si2291013ywf.0.2015.09.28.23.35.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2015 23:35:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::230 as permitted sender) client-ip=2607:f8b0:4002:c07::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::230 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x230.google.com with SMTP id t14so204768869ykf.0
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Sep 2015 23:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=HZtS/wUrQTa7Wn8vEjY9P0TeW+SZjOHcgSmQq7Kd92o=;
        b=GhwgarQ+kUWHssFFLavNo7v85r/8WlBMug7VTK0TMYeEY/WCBPKBuko0laxhwvaIWQ
         7LVIN3XsJgakzNmqyxV7n9f3UV5xpQOgqgzocu+Eys5x6B0Z3j36aCce/YQ3WyJJ0u2W
         sSmFei8UOSpE5FJAuROw0hF34eBKVPahZWrO0yKbQQsrjbOPZYvtEIi1l6XHl5QmcYFR
         R5gK4/KKk3rUxF6mf85Yw82Lxp4dAOrG516VWtqd24qwK5ncVnx/AHh0PKSHl2n7fD0n
         WfhqxlLBipZqj6F0OSr2jK9BMyHPLGmhDC1b9/nkdF6ve8OM3R7Koq8V2vSDtxRKtDhy
         uP5w==
MIME-Version: 1.0
X-Received: by 10.13.227.4 with SMTP id m4mr20391369ywe.72.1443508505397; Mon,
 28 Sep 2015 23:35:05 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Mon, 28 Sep 2015 23:35:05 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Mon, 28 Sep 2015 23:35:05 -0700 (PDT)
In-Reply-To: <35465e02-616a-4c1a-b177-84f34b04700b@googlegroups.com>
References: <35465e02-616a-4c1a-b177-84f34b04700b@googlegroups.com>
Date: Tue, 29 Sep 2015 09:35:05 +0300
Message-ID: <CAHWJYF=PDpQPFtGtdo9Hqb8wQ8CKmB3YEnR7osPpS-vqTj4mUw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Error in building kernel
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Bhumika S Goyal <bhumikas.goyal@st.niituniversity.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary=94eb2c07d624b1d0d90520dd03f5

--94eb2c07d624b1d0d90520dd03f5
Content-Type: text/plain; charset=UTF-8

On Sep 29, 2015 9:28 AM, "Bhumika S Goyal" <
bhumikas.goyal@st.niituniversity.in> wrote:
>
> While building the kernel I am getting an error :
> scripts/sign-file.c:20:25: fatal error: openssl/bio.h: No such file or
directory
>  #include <openssl/bio.h>
>                          ^
> compilation terminated.
> make[1]: *** [scripts/sign-file] Error 1
> make: *** [scripts] Error 2
>
> How do I fix it?

It seems like you need to install libssl-dev on your machine.

Ioana

--94eb2c07d624b1d0d90520dd03f5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Sep 29, 2015 9:28 AM, &quot;Bhumika S Goyal&quot; &lt;<a href=3D"mailto:=
bhumikas.goyal@st.niituniversity.in">bhumikas.goyal@st.niituniversity.in</a=
>&gt; wrote:<br>
&gt;<br>
&gt; While building the kernel I am getting an error :<br>
&gt; scripts/sign-file.c:20:25: fatal error: openssl/bio.h: No such file or=
 directory<br>
&gt; =C2=A0#include &lt;openssl/bio.h&gt;<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ^<br>
&gt; compilation terminated.<br>
&gt; make[1]: *** [scripts/sign-file] Error 1<br>
&gt; make: *** [scripts] Error 2<br>
&gt;<br>
&gt; How do I fix it?</p>
<p dir=3D"ltr">It seems like you need to install libssl-dev on your machine=
.</p>
<p dir=3D"ltr">Ioana</p>

--94eb2c07d624b1d0d90520dd03f5--

