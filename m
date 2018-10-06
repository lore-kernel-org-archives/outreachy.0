X-GM-THRID: 6609200682225369088
X-Received: by 2002:a37:4b15:: with SMTP id y21-v6mr12103734qka.34.1538849741187;
        Sat, 06 Oct 2018 11:15:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:257d:: with SMTP id 58-v6ls4372601qtn.7.gmail; Sat, 06
 Oct 2018 11:15:40 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62/KgydZB7v4eaun2jD3Saoc32BJtkqZAWMQOP2dQjnwlH+4PPA6+d+s8zN8dwtev3er3lk
X-Received: by 2002:ac8:2d62:: with SMTP id o31-v6mr11349315qta.11.1538849740729;
        Sat, 06 Oct 2018 11:15:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538849740; cv=none;
        d=google.com; s=arc-20160816;
        b=mGzjDUDAlVl3h1nzRJ+AC2QQ5pEdJ+eLkdsVYuAYScVid8kYjCWbQgg+tSkHby1psF
         6OYtM2YOVqeKvZxgRNP2DUoRr17ep3LM284QvilBgWYVNX3VWXBkoHiEORxScvMIKXBq
         LUfOuGG48VqfMfeuL4a128AtgE5kAAFdpPrWpM+flklyUQmkz6JSoHHD6VzFek8qNnaC
         5dgQWMVZNUxBR7RQcsdji0JwfJQjaNBo1s5izUpL9YFZPkieeRmkbTO5Tpvr27iCnxZ6
         wQumBddoXY++7dLx9oJY7ru7C4hnxeWEaEcpG/umF9+B7w3wOqBk+d03DBbsYAjBN+8l
         AiMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=do4LQQrHXqvQfc3aKuUoU2rW4c5QdfV1U73UtyMowL8=;
        b=p861r8NZJ9rclrSSoKqSly3zbjeXetzVrwMOyEIonMg+VcJrEYVRm7yUeC46aFGegX
         bikSy7IU7u1jsi+h3PFda+aR2pWHEVRy2+bkmJm5FJgCCJHvkgEcA6y8wQMS9uvBQBih
         cg+05auSFQUApFSTZj7wdeVl660sXJax/6LnhEuPxZcxOwqJfNeoaFQ//c1iP/1pVnUO
         xOnyxvn+3LQPT8i5bcEYep90vKRAKSsGM9Up+R8O85K3RKZ1pjkTYnVeRBnKG7RD5bw8
         ioj8lr9OC38w+Y/4Nl2KEqCoZ4zMbHwSwz6XIiS4zHsTL+QGK4ttOeR27xO9zNpCdA8f
         vCYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J5gnCTiv;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id p9-v6si573017qte.4.2018.10.06.11.15.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 11:15:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J5gnCTiv;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52b.google.com with SMTP id y18-v6so6107011pge.0
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 11:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=do4LQQrHXqvQfc3aKuUoU2rW4c5QdfV1U73UtyMowL8=;
        b=J5gnCTivTULAYVJ5JeOFykaL4SbqDp/x8m9+KNPdcEyFzYgc/RwCvhzasEn1xQkljy
         0zlqxpnClcb8SnSCgqxAi2a6H9jELKOK/W1byes0yKij/hx1z9KDR/uFcqi/f4rcP9le
         eGhSWwIMg9vV0XjEANy0NNMGRaipKnG987q8hbTxOGgCDxT36n51BxxBTPSJ0X4Xgegc
         bwkZTSIjlf5uqscKE3z8lBDD7h0+uLFMwScTloEhvvdHNddJvO6GzXy674MREEBHnGfe
         AQoP+HEMxgTojHBs/mWHQdkG+NmsU5fYCdW7erYv5Q9UQ3stmHwcNw02VsFFFbczW0OX
         S9ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=do4LQQrHXqvQfc3aKuUoU2rW4c5QdfV1U73UtyMowL8=;
        b=C2D+AFqwsH3NGGAUokWpRIGflB00qQhdjTdgUDBKzrGfZHOl74AaZt/dFn6MQJTg3q
         /2Q9PoiwQJiIj6DcT7xwb6gUK6ZpfNfvDcWAb3sMSoUQt67MqzPDa60CjA1p28+YLEhP
         3ZgL0aGTHNfzkr8c6skibmooMTGt4SDuvQNxv7r4W/oVTcrH38deO6s3FLf8xe7KS/Lr
         Td0aG6tmMiEMplKH2pP6GYj8GDw7o3vQWuadESzF/DZimsLQGL9BWt9uWSz5O7EDTlQ6
         OcOMw3If80+I6u52QjHsZPsyh/DCzVOC6Ae4fll06pXLgatOHdIyfoel6CcHySRB+Ynm
         C9cQ==
X-Gm-Message-State: ABuFfohry/OC2hBR5aSfhHV70dgtKSQAkzO94KfZWqSOlN+fp0xCU6mA
	tbut1wXhN154xM5F74HAtfY=
X-Received: by 2002:a63:a612:: with SMTP id t18-v6mr9971999pge.338.1538849739763;
        Sat, 06 Oct 2018 11:15:39 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from [192.168.1.5] ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id a79-v6sm17922528pfa.124.2018.10.06.11.15.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 11:15:39 -0700 (PDT)
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v3]
 staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
To: Himanshu Jha <himanshujha199640@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
References: <20181006135752.GA3037@veda-VGN-CS3AGH-R>
 <20181006175958.GF6283@himanshu-Vostro-3559>
 <8b2ea889-5ef2-d0a4-d48f-e09d00299434@gmail.com>
 <20181006181337.GA7070@himanshu-Vostro-3559>
From: Bhanusree <bhanusreemahesh@gmail.com>
Message-ID: <b7682808-8b31-7263-3aac-ec11f5d71f4b@gmail.com>
Date: Sat, 6 Oct 2018 23:45:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181006181337.GA7070@himanshu-Vostro-3559>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Thank you.


On Saturday 06 October 2018 11:43 PM, Himanshu Jha wrote:
> On Sat, Oct 06, 2018 at 11:35:34PM +0530, Bhanusree wrote:
>>
>> On Saturday 06 October 2018 11:29 PM, Himanshu Jha wrote:
>>> On Sat, Oct 06, 2018 at 07:27:52PM +0530, Bhanusree Pola wrote:
>>>> Adjust all lines exceeding 75 chars per line to fix checkpatch warning.
>>>>
>>> Would you mind explaining this:
>>>
>>> from:	Bhanusree Pola <bhanusreemahesh@gmail.com>
>>> reply-to:	himanshujha199640@gmail.com
>>> to:	outreachy-kernel@googlegroups.com
>>> cc:	bhanusreemahesh@gmail.com,
>>> gregkh@linuxfoundation.org
>>> date:	6 Oct 2018, 16:44
>>> subject:	[Outreachy kernel][PATCH v2]staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
>>> mailing list:	outreachy-kernel@googlegroups.com Filter messages from this mailing list
>>> mailed-by:	googlegroups.com
>>> Signed by:	gmail.com
>>>
>>> "reply-to" ?
>>>
>>>> Please check your email settings!
>> I did not understand.What was the mistake i have done ? shouldn't I mention
>> "reply-to" in specific ?
> Lookout for the purpose for "reply-to".
>
> If someone replies to this thread, that reply would go to address
> mentioned in the "reply-to" which is currently my email address.
>
> reply-to:	himanshujha199640@gmail.com
>
> I hope I'm clear now.
>
> You can add *your* secondary address in reply-to if you want to
> receive the reply at that specified address.
>


