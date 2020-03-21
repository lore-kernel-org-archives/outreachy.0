X-GM-THRID: 6806467742549409792
X-Received: by 2002:a05:6512:407:: with SMTP id u7mr8022525lfk.36.1584794692816;
        Sat, 21 Mar 2020 05:44:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9a8a:: with SMTP id p10ls1934822lji.9.gmail; Sat, 21 Mar
 2020 05:44:51 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vusT1TjoSyEa8dSMXVHlh9oP6smPCKaqiqSKPIhGCWE2H6WYAYOK+ss2CTWG4U7h5H8I/Hx
X-Received: by 2002:a2e:99ca:: with SMTP id l10mr8183755ljj.13.1584794691314;
        Sat, 21 Mar 2020 05:44:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584794691; cv=none;
        d=google.com; s=arc-20160816;
        b=tvafOmYoUPrmQlYhmIp/602dYmCOUjNIgVqZiqWEbVJlq8097y/CM1u9xbsLsAZfkd
         08wIqZohLc8o1ZwJT6oPm+Z9bCY05HP0TamOqnvMV0xfjeOWR5dcN5gptgBatrMV6VFX
         1MTjY52Z66ZPRzfQb7migwOBsGyHtoj11tHbFnEJuOhgjDjUaNKaFlB3E4lsZJyAG5Hl
         mbe0gEp1DlASbN1TdtbFtgAZQu6ZsryAXSN6mwTGQ+9EInSTwvcyJbt2TsPLhhpJKV5U
         giPq68n/DQuvrSfbTRdeQXsDofo27qyFq3XoE4r3uuo5HypAQC2h0JqkoEvH6yuB15wy
         0gnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=IblYHsznbK0P4vSlwLsd7gunGKDeqLRufgUBtqs6G6Y=;
        b=hC4yfZl15RVgbxpPgvAnLNZtpScwMFjKDoZ3pKc84uwDVaQxDx1HMpWqU9OIMVGfB1
         ut16w0ANShYhCJIePcpafFU2Z37xbK/3mHrVr3iTuEuiNfPzS7fpRbEvV0DykNR5KwQk
         dMh8wTgzo7kyMo3dDvQ44RK8tB3uDjDUHKTcLo9mkUTvEV+LKTsxQPUgV6GCjjCKVqtm
         jbO9/zVCc7q9w6dg4aBxm4IU2vNbYYPvmWgUa0wt7ZPhe/CFBb4NhvO8lDS4MKf9VQJG
         0w59200VovTo9fVAAfbmEK3betCCUrfDDt6aqsCg/SLWRurMzk+j0h8Qfy/nrk/cS/uQ
         dVWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bVILt4rg;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id s17si651809ljm.5.2020.03.21.05.44.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 05:44:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bVILt4rg;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id z18so513739wmk.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 05:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=IblYHsznbK0P4vSlwLsd7gunGKDeqLRufgUBtqs6G6Y=;
        b=bVILt4rgObmdPC+yOlYkyBKybHTOo2Hz4qENQi2CYALRUgrvXVExoYFtmgts84cWVd
         MMt2LXGub0/W5qjVsfatFnnS0wA848ylSUFAwKBHrh1fepSVqImngLXr2vzFHq+opa4E
         Cod82TJIQJl/exCU1QlXkDbHa190vKD+nA8Gg7kt4SCp2J/3gKDO/PTJQ+QquWeZgIOF
         tu3XbkvtSCHqh3EbqhahtV7yDQHNAxk6uIza3Tz3BoTSnnloVRrsi6XyDRh3Y/fKR5pZ
         4enYLgwG+MXI9JJ1tNrsZ8jgzvYwPeibj7U6j5zaHRbUrLRIxN4E2jQXbUwJyNKMq29f
         forw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=IblYHsznbK0P4vSlwLsd7gunGKDeqLRufgUBtqs6G6Y=;
        b=b95YbaCMQeE+JHtqWyl/jfbHhRi0OZpbkVNRswl9iqgFhmXgM11rJ/LVWh0Wm4eX0Q
         fjr4TsgObcM0cIDlxrc3G490WjA6PuwMwRAJlIerCy2N9bVwczow6Or4DPG/MYTBluq/
         YYrdEnsd5wDl13llVaIQ7MGEKCik3rs+B86tS3aJsjzQflolmAYz1ff2B3s3ENgaUkS/
         7vX9y3hZcOPOo0VK+e3bDZ5BO7BSYyc+xiXx0HblDY/jedBzxIP1eMCPa8h4AHKSR6/r
         jQ85++BlrmtLFyG1RZC5uD5aqygEZ9jlMAobKL+hPFr1bZcw7muVZmhUHwtWZ8srsVvx
         etKg==
X-Gm-Message-State: ANhLgQ1dPxSy7J08ZnCaMJFBnQ2IdmoPzQiJTl0/k4AzOOMISNncG9oB
	xex3S9bnTQoLsnkiTFLCDNo2mniWGeQ=
X-Received: by 2002:a1c:9d41:: with SMTP id g62mr16691608wme.131.1584794690723;
        Sat, 21 Mar 2020 05:44:50 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.115.229])
        by smtp.gmail.com with ESMTPSA id e5sm13364603wru.92.2020.03.21.05.44.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 05:44:50 -0700 (PDT)
Message-ID: <e60514a251eb3f690e9136670def0ee2b8289969.camel@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: hp100: Block comments
 use a trailing */ on a separate line
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Date: Sat, 21 Mar 2020 08:44:48 -0400
In-Reply-To: <20200321093325.GC917692@kroah.com>
References: <20200321013101.GA17131@siyah2>
	 <20200321093325.GC917692@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sat, 2020-03-21 at 10:33 +0100, Greg KH wrote:
> On Sat, Mar 21, 2020 at 04:31:01AM +0300, Gokce Kuler wrote:
> > Moved to the bottom line */ for block comments
> 
> Again, you said what you did, but not why.
> 
> Also, you _added_ two new checkpatch warnings, not a good ratio :(
> 
> thanks,
> 

Iam sorry, are we allowed to work on this driver, because i got; 
WARNING: drivers/staging/hp/hp100.c is marked as 'obsolete' in the
MAINTAINERS hierarchy.  No unnecessary modifications please.

Sam

> greg k-h
> 



