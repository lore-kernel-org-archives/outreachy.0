X-GM-THRID: 9347595763712
X-Received: by 10.152.163.99 with SMTP id yh3mr3748904lab.8.1427398234255;
        Thu, 26 Mar 2015 12:30:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.4.38 with SMTP id cb6ls244528lad.97.gmail; Thu, 26 Mar
 2015 12:30:33 -0700 (PDT)
X-Received: by 10.112.166.164 with SMTP id zh4mr934314lbb.20.1427398233820;
        Thu, 26 Mar 2015 12:30:33 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-la0-x231.google.com (mail-la0-x231.google.com. [2a00:1450:4010:c03::231])
        by gmr-mx.google.com with ESMTPS id b6si422073lbc.1.2015.03.26.12.30.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 12:30:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::231 as permitted sender) client-ip=2a00:1450:4010:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2a00:1450:4010:c03::231 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x231.google.com with SMTP id p7so35007383lah.2
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2015 12:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Ij0RwfYUbuG5g5JUMgfk510rFUavZma2rNuiRNc4O48=;
        b=pG0zjUrtGg9boIK4kPtKN0J21BCfkHnJZ8nNIHX8c0tEngSuODZen3RvKlFTb8lFk2
         MmX2znis9Iaq6Tot3zS0jJVjQnsF50q58oZoMFqUHdVr6u5m9fVixnA4xwo5Kxa/uOKk
         tOHD+X+shAUa6CavlsXMv66k7UAKMj4SYxUaeMHTEKBvQIzFX2selupmfWzf+0fhaS15
         9LQ8kQdOLV2pd6mj8TvHyCipPuz2ngJ8DkdjKEZuvthBskfbYZXOmwyHn6b1AL4HHKqW
         q/t9D/dtTg+FoLWwxiBD6Nd3OsBS0jkVz/k29HafOTxXGnzgMZdgFLOvESG3V+oJA9j5
         mQjg==
MIME-Version: 1.0
X-Received: by 10.112.129.200 with SMTP id ny8mr667148lbb.77.1427398233726;
 Thu, 26 Mar 2015 12:30:33 -0700 (PDT)
Received: by 10.112.59.7 with HTTP; Thu, 26 Mar 2015 12:30:33 -0700 (PDT)
In-Reply-To: <20150325111608.GA24140@kroah.com>
References: <20150324081634.GA30469@akanksha>
	<20150325111608.GA24140@kroah.com>
Date: Fri, 27 Mar 2015 01:00:33 +0530
Message-ID: <CAHjTdYcHKsWxzJpbNPjrDN7-tU0XPfJ-91vhuzi4kMsFQhzOsA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Remove typedef hfa384x_t
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Hi Greg
I have done git fetch and git rebase so I'm not sure
why this still does not apply.
Could you suggest some other reason?
Thanks :)

