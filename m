X-GM-THRID: 6261701952738951168
X-Received: by 10.107.12.212 with SMTP id 81mr16425319iom.18.1457916096537;
        Sun, 13 Mar 2016 17:41:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.44.73 with SMTP id f67ls3452553qga.58.gmail; Sun, 13 Mar
 2016 17:41:35 -0700 (PDT)
X-Received: by 10.31.15.11 with SMTP id 11mr16346223vkp.3.1457916095527;
        Sun, 13 Mar 2016 17:41:35 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id h69si1592678pfj.0.2016.03.13.17.41.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 17:41:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id fl4so143591862pad.0
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 17:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Qa4klB65PpPID4f0nV4DM/siD7vYlKs80OGWEwyuSMk=;
        b=UAagamVCvGT6teSbzaKVjP3KQOCnVJLnKCV4vfNcKQxgFASkkCBJqLL666PkvC7f4r
         LM5K9O6WYNsF0DF7Ow6eCNSjyr1VSnm6IVjvXd0JPHTLghC64g8qVauC5P2a5L6XH+w4
         A1C3p+0xyoFZKblnMDIC0UdMr/Wz9DJO8NC6bK4tKWEcUnWUSynOvQK2mkJg6Eyw+k2t
         hPkfnBWT1oHMOAivsWa/DYkCjx0oJGVfBLWdpilU5sN/s09EzcktFxXaWZcMh4O7Dxcc
         EMGsnIMx8i5GztRYHZFq+t8a2U9o9BkdF1/LtlF1/q7CRyitnOYXmiNW8gQM/yqNHULA
         BDjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Qa4klB65PpPID4f0nV4DM/siD7vYlKs80OGWEwyuSMk=;
        b=a5LcbHdfv7SvQBo+3uauz6ytOsZIJC+QHNNwj2eEIAHXOJJGsHjk7r8Gyf93FLz9aC
         IyK20jsdbTCUuR+I6cQ1notl2EhtERrf5jTgHjvlBQvTJ1wnPPPtgokYd0CK2MR03VML
         j7HJDvobo+M+QnaB/JFq5UI9AGiVSGjkDuJsPUfY+a+KoUe7ZCP2GP80T8WxClTT1SJ7
         rD5hgPWaw5+ry9tNmu1U0BBOkPKYC9w8gOd/dRDR7cYOBEaNB3jacMyW5DyvP47rBVkK
         E39gbuOuEc1VEyW2kkTPGnMxHyf/PAZUKA1VKbdoW1GxTyFQ/3yU8hslYn8+wCaDxD+S
         wbVg==
X-Gm-Message-State: AD7BkJJ2QmDqI3/BlRn5EoSQVgpRE3CXyFCSWQXr/4JhDaqY1lT0CFVncONF4FPPJDUdCg==
X-Received: by 10.66.228.1 with SMTP id se1mr15455736pac.43.1457916095318;
        Sun, 13 Mar 2016 17:41:35 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-71-44.dhcp.embarqhsd.net. [67.232.71.44])
        by smtp.gmail.com with ESMTPSA id g23sm27431602pfg.35.2016.03.13.17.41.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 17:41:34 -0700 (PDT)
Date: Sun, 13 Mar 2016 17:41:31 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Coccinelle SP in git logs
Message-ID: <20160314004130.GA826@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Mentors,

Are there any preferred limits to the semantic patches included
in changelogs.

I'm about to put an 80 line semantic patch in a git log and it
has me wondering if I should give a pointer to the patch instead.

The pointer would be to my fork at Coccinellary on GitHub.
GitHub may be less persistent, but it does have the advantage
of including the semantic patch description. 

Thanks,
alisons



