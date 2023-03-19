Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B623D138F
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 12:50:10 +0000 (UTC)
Received: by mail-pg1-f178.google.com with SMTP id x37so5206690pga.1
        for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 05:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679230210;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=brsH2RbXE1CFT0V1MdX7PglJSQBxUoCC+FifxvO9G/w=;
        b=DpbcLvFfB435os0hmIm6l53KIR4kLXlq8Qnjz0kua2+8Q+IV9dvdgRe+9szBwXvBIT
         J1KtPoAtn39wMaBHr6dan17oDUXrZ6MfU5wS5JYi3rMornMb0VLGDBplRldTMnea7C8F
         9TGSLRyy/m3kyN6A1MS6r6ubdEfURgVtUy3x5s04BRUGKB02RDBGc5CPujTPnIgxqSaZ
         zWFLEmaBAAi1ehWFBud5OGoZcpyacSEC+QvPbg0i+Xn/gsCnFq4mWka3NRftuaWgyX0y
         uIpn6JNf9l17j7yrK1qjETe+LNTSp28vIIPPUyNpVBvOMQANbindmqHgtDJgOd09dEtu
         Kurw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679230210;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=brsH2RbXE1CFT0V1MdX7PglJSQBxUoCC+FifxvO9G/w=;
        b=ces2Di8CAzTzQG5QYs+BaxFUyxVm0g8Wv4/93Q7RaCuqT37fPanniusk6fP6Ix7bEF
         T2tkCvoSpwwOcSD/8STs26i8CRbeuJT2jNIaXlo2iIGYTMbIzEGmyYSex4W4HNZ3aetO
         p/OIlV8cml1pNscPQIXwjnm635pwiUhhqeFokgNlbOg6RZAuxdW/pTyoieBdz+oHISrB
         O6dLRoIBjWKOeBlC2twslRgJKwHioFzY3BVU9iwR5etCy0jOtKtp+G9S5Zof+JTUNty7
         yGbfTDt5WBEtI7G1ShBqPgImgHok7i+In0rEzQbCo2B8GF33jZrnZleNfjVX+aGRgLGA
         EQ2w==
X-Gm-Message-State: AO0yUKXYxG2baRNGS7xBMcypHg4pOyLCJ0bWkHaH40cvORdhb+p38U1Z
	To0CjXxbYIux3J2brCyO0K0=
X-Google-Smtp-Source: AK7set/KWBYfk241dHuIZ9hrVem5YFtgfmGUPt+f2t8FiPALRT7RPvBSH/ImPNhU2Lm1mxRLdkvdlQ==
X-Received: by 2002:aa7:96cc:0:b0:627:de2e:f1a5 with SMTP id h12-20020aa796cc000000b00627de2ef1a5mr4531140pfq.4.1679230210041;
        Sun, 19 Mar 2023 05:50:10 -0700 (PDT)
Received: from [192.168.43.80] (subs32-116-206-28-58.three.co.id. [116.206.28.58])
        by smtp.gmail.com with ESMTPSA id e25-20020aa78c59000000b0058837da69edsm4557539pfd.128.2023.03.19.05.50.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 05:50:09 -0700 (PDT)
Message-ID: <ef6cc9d8-4064-6422-f427-1c3ef13a0119@gmail.com>
Date: Sun, 19 Mar 2023 19:50:04 +0700
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: email configuration for the outreachy documentation
To: Sumitra Sharma <sumitraartsy@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
References: <alpine.DEB.2.22.394.2303191059470.2867@hadrien>
 <20230319112114.GF50179@sumitra.com>
Content-Language: en-US
From: Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <20230319112114.GF50179@sumitra.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 3/19/23 18:21, Sumitra Sharma wrote:
> A question What are the alternatives to esmtp?
> 
> I am unable to find a solution for this: 
> 
> "Comfiguring esmtp requires adding some information to
> the .muttrc, but people who don't want to configure esmtp may also want to
> add information to the .muttrc."
> 
> So either postfix will we used which will relay through the local machine...I am unable to answer this.
> What are your views?
> 

As stated in earlier reply [1], yes - we need to move away from
unmaintained cruft like esmtp. See my replies ([2] & [3]) for the
configuration I shared to you.

Thanks.

[1]: https://lore.kernel.org/outreachy/ZA7oTq4LwuatjaI4@debian.me/
[2]: https://lore.kernel.org/outreachy/ZBA+AtHMFwwkwifW@debian.me/
[3]: https://lore.kernel.org/outreachy/ZBQsDwvI67iq%2FDiz@debian.me/

-- 
An old man doll... just what I always wanted! - Clara

