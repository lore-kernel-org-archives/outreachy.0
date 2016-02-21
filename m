X-GM-THRID: 6253384037971263488
X-Received: by 10.66.146.193 with SMTP id te1mr20411699pab.17.1456031163946;
        Sat, 20 Feb 2016 21:06:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.117 with SMTP id e108ls941715qge.77.gmail; Sat, 20 Feb
 2016 21:06:03 -0800 (PST)
X-Received: by 10.140.136.135 with SMTP id 129mr20694731qhi.10.1456031163153;
        Sat, 20 Feb 2016 21:06:03 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-oi0-x235.google.com (mail-oi0-x235.google.com. [2607:f8b0:4003:c06::235])
        by gmr-mx.google.com with ESMTPS id kr4si1153573igb.0.2016.02.20.21.06.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 21:06:03 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::235 as permitted sender) client-ip=2607:f8b0:4003:c06::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::235 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x235.google.com with SMTP id w5so36692673oie.3
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 21:06:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=G6wOwOwLcnohq8ZkZvcpU5hqoRxDv9ZTeNDp/1AAbVQ=;
        b=DWbMbS3kePdOJPOZ9wxlNQ1rHnhSVoVUVcoXdiyS1qTip1U65Y67o0RI4bo7WPGgDS
         PmWL0xvx/i9HzmijW5OnXX8o3JDjDi2/QiPuELw2W5r2RiRIcZvBRUngwwyt/MWs3j7s
         wGWAyw5+qTHuuAG3UBQ8PBHrS11rZgqSesGsnB+OEF0Josyu2ijYUBR03Q0IsJjTQnON
         iNh6Py/LAsW5+ZfePi+DaOURDxYfAoJhL9FAfywPSYBy2QN4YEg91fP6D5sU4gHJ8xjb
         C8om5aCCI6ljGqV82mN2AgqSJhK7dDhY8xxRRihP+RCfDPBTA2yLLXZ6V7paTg6heyLP
         bzew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=G6wOwOwLcnohq8ZkZvcpU5hqoRxDv9ZTeNDp/1AAbVQ=;
        b=StLckv7XP9wHQ3PyNAiftxYb/R/APWV0h0B1ChK88vHkRlM6wV5dnc2PDl+XJxN33H
         m4CHV9IFtgoyuw7j94z/Fa9duXz5I+vKm3gIQdAyiiSC6fBAa7CwAyB5JEZIlqx0GFrN
         +oggxBwYoFwxCviVjvcCxr+CzTkX5v+FoEOg4eLickc8/88uiKWsvV+fj6ubR9xAwTaT
         t/HOvpC/1WnsuOgI4NI6MrFMYZdQH1gTd7Fx40lmZVQ4LiixxYqiA9/hJECY76hv2kEk
         LKaY0VXKTznVKyy+uw8PTJ4aasHuNVVKi8MT32KQwDd/8LOKCeJr/eaCughqMH85vWN2
         Cp1Q==
X-Gm-Message-State: AG10YOSo2eSwPXFWs6zGMBkkxZdBWLiaa/6eavZb+vpj4Sygk5UxAfPX+57lqYiRO8k80+c3h66/BwDPLDb1dA==
MIME-Version: 1.0
X-Received: by 10.202.199.10 with SMTP id x10mr17433087oif.101.1456031163004;
 Sat, 20 Feb 2016 21:06:03 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Sat, 20 Feb 2016 21:06:02 -0800 (PST)
In-Reply-To: <20160220232752.GB13165@kroah.com>
References: <1455979415-13693-1-git-send-email-bhumirks@gmail.com>
	<20160220232752.GB13165@kroah.com>
Date: Sun, 21 Feb 2016 10:36:02 +0530
Message-ID: <CAOH+1jHO59v1bf1=-2u_XdDqgwHXA=DEwxFKw9uXuKOaNsadYA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: emxx_udc: Remove __func__
 from dev_err
From: Bhumika Goyal <bhumirks@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 21, 2016 at 4:57 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Sat, Feb 20, 2016 at 08:13:35PM +0530, Bhumika Goyal wrote:
>> This patch removes __func__ argument from dev_err as dev_err includes the
>> function name in the log printout, so there is no need to include it
>> manually.
>
> No it doesn't, the function name isn't there, only the device name.  I
> can't take this patch :(
>

Thanks for the feedback. I get the point and will try to make my
understanding of dev_err more clear.

Thanks
Bhumika

