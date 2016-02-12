X-GM-THRID: 6250414458663862272
X-Received: by 10.129.146.73 with SMTP id j70mr1907363ywg.25.1455291513053;
        Fri, 12 Feb 2016 07:38:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.145 with SMTP id f17ls1597696qgd.27.gmail; Fri, 12 Feb
 2016 07:38:32 -0800 (PST)
X-Received: by 10.13.235.144 with SMTP id u138mr1915007ywe.21.1455291512660;
        Fri, 12 Feb 2016 07:38:32 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id v197si1118989ywa.1.2016.02.12.07.38.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 07:38:32 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id 14so5712193qgg.3
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 07:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=TxFtI1lTc+gTRUMSRYWJ9h8ywesz59BS5DHFCq3wnTg=;
        b=prSnjlTUCmuo894ZRcjGvVwM74I8+ee7PiDhRtQZKztaGDRMarGQJc6QFEiFI1j/DN
         L8IbHnkD6+L+bntD67z0MWbxvEJsvGPovlAYBPLwpSqUmeHOOQVWwMjs4NUsxQ4xeflL
         B1H2s/sNc9BAnHEAR66qxZc7rXSLWJZWu234ufoHHjUt6qswtuWwAuZdGbFdoyOiZHkk
         Mx33eDiyuuhzgcdgLE5Lm2bxVjixHFiIzNPZ2A6ela7QFkBh6cSP/+YI6H3otq+g1uq8
         MEevuC0CjLTSPb6WGUvbU3y10O+d/m7MFh49jUTELsw+gJFZhOlZnwE/E2rzOxPPc1pF
         x1sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=TxFtI1lTc+gTRUMSRYWJ9h8ywesz59BS5DHFCq3wnTg=;
        b=Z1u7CyQmZB1dMxhhqq+nqVStXNrth4cF8mK1HsjKd7zm4ecDOzewZy12U/dBL+sgph
         Ae2I/dH/4dGG0xzpFTWf/aDo2GqEJsOL8Ua9J7RlHuapZVEkbVdZlvdreTzW8Dhcj13N
         Dr2VCcne4H4lvxWGdbr2u9wW8TpJvYQFBNpgbadDp8IYiS4H3SB1JZBDMmxMZm397Ty0
         2mX4oS31Z36yppxqGW7XeutzEAlPN2a0RHf0deOOg2h4ud+s67BoAySTHYIVzo4AM87z
         +fbh8YZsseRa3nrx6af4eLVgBx0JG6lx+Fal5wWM9njs9HZE1yXHdlBgMGIqtMU0JaX+
         2wDw==
X-Gm-Message-State: AG10YOQWZyL2xpvSJlaX+EF5NltwIDWe0Tba0f82wvtCW0Ed3rKrrTzufyQIal/9X1ClHYXcUgjXZZbhqe0ncQ==
MIME-Version: 1.0
X-Received: by 10.140.106.181 with SMTP id e50mr2681527qgf.30.1455291512471;
 Fri, 12 Feb 2016 07:38:32 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Fri, 12 Feb 2016 07:38:32 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602121558450.2510@hadrien>
References: <20160212144017.GA1301@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1602121558450.2510@hadrien>
Date: Fri, 12 Feb 2016 21:08:32 +0530
Message-ID: <CA+5yK5FH9egAHStv4Qc+M=4kPt1gTitYjcrhKUE72fn_cnyjwg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/6] staging: rtl8192u: ieee80211:
 ieee80211_softmac: Replace MSECS with msecs_to_jiffies
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 12, 2016 at 8:29 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> @@ -380,7 +380,8 @@ static void ieee80211_send_beacon(struct ieee80211_device *ieee)
>>       if (ieee->beacon_txing && ieee->ieee_up) {
>>  //           if(!timer_pending(&ieee->beacon_timer))
>>  //                   add_timer(&ieee->beacon_timer);
>
> The above comment doesn't seem necessary.  It would be for a different
> patch than this issue.
>
> julia
>
Yes, while working on this patchset I found a whole lot of coding
style issues with the driver and a lot of code is commented out.
I can send cleanup patches later for this.

Amitoj

