X-GM-THRID: 6200365191427784704
X-Received: by 10.180.160.146 with SMTP id xk18mr985340wib.3.1443647744214;
        Wed, 30 Sep 2015 14:15:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.98 with SMTP id gt2ls5067wib.54.canary; Wed, 30 Sep
 2015 14:15:43 -0700 (PDT)
X-Received: by 10.195.12.234 with SMTP id et10mr880194wjd.2.1443647743854;
        Wed, 30 Sep 2015 14:15:43 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id c7si939520wiy.3.2015.09.30.14.15.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 14:15:43 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0MPoeo-1ZmKfV1o9a-004x6n; Wed, 30 Sep
 2015 23:15:43 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Subject: Re: [Outreachy kernel] Concerning applicants who are CCing themselves
Date: Wed, 30 Sep 2015 23:15:42 +0200
Message-ID: <4543594.pJ5pIvqNYp@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20150930174335.GB12195@waves>
References: <20150930174335.GB12195@waves>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:qe9vAQhIHbmbAN+fe5EmFTevdFlS5qSAikmkFXnuPJHo8l7Uytj
 N04dyl5zLAtUirxy+vHUnm58X+tfDBwGzoxuXEwAZKz2eVbuP+gH+mSiMrQQQG+cXy5fN8k
 BUMmAVSpqQ9sWN11zHFC4BWGbkN1z/ge8q2blD9kQJF96dt2Vk4LLWQLe6Frgy1BSlWCIb2
 omIuixYvYfZ/sLctbl0xQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:4hFkuQ5a7Z0=:/0ECTN3DvrFMLTrtELveSL
 WT1vyhyvBRzqqTBPj58d1ju4bfMBx1X5daBYJ4QnZ1OcvNQYx/g0YeaDlDT0vNopWKFEiKqoX
 mKZMRQMV/ouXXkTyGmwZj5+4c7BD5DwuSF0nh5aFTjHJqligU9fAwbZmum+tZQaBzy3VXnDbl
 JWjfBbI9nJppA9Sg51Wl1J7fWfv6nN5rkLfSt0IKkWSWQGNMTYuXcdtivMxxpRyEeRwFeBHkD
 MtaccLqWjwtz5so8fmxmB8OD9QgpD+T3fB+s2VuNuwDvDEnzPW7Ya+oMbxg3387Bh3/AFWzNq
 HcDZspd+lDuaqbIodTm8BtT2DPwqEdmqdZIKYxWvxb6vftKLw3RmvOVrtuSbdTWxVIdkiZbJe
 dJHMcGpWQK+JeLH2XOiiBaCnNM/KCYDAZS4qRQsmVFHU3/ffO+bqxcvwAp4WWMZ/QKQZDSQ04
 mGMKTubbX/yZqmnmDgD7KDOjVS8Y1zcwOTxF04gBZU/ZlSvkWhBkIxciAr06Ipyh4CRtY0y0y
 YTcpi966XO9JQb2KH9fzQiwMvjaqRpe42jpeWBBU9bulyWoTmEyRjDrVwudwiCPxbCJzXy28u
 uMI7MjU5L5/mmf9zj+dOUK453/WW4/2FtVjxNk90epLQag3cwfzwQ6eSVrgnhtE3TXT+yspKg
 l4jcwVSOOiSFXwJ2S6gdQK9FX4x/zc+gENG6J++NCoAAVNRlUTKxpw7j89Wgr9hc5XDU3YcHM
 JABRgilGZuNmeRHC

On Wednesday 30 September 2015 19:43:35 Aya Mahfouz wrote:
> Dear All,
> 
> I've realized that there are few interns who are add themselves to the
> CC field in the mails that they send. I don't think you need to do that
> if you adjust your group membership settings to receive every email sent
> to the group. 
> 
> I would advice the applicants who do that to manage their
> group settings from groups.google.com to receive all the emails in their
> inbox. It will help you get important notifications from the mentors and
> threads of fellow applicants.
> 
> If there is another reason for that behavior, kindly enlighten us.
> 
> 

I think this is just because git-send-email by default adds
the sender to 'Cc', unless you add an explicit --suppress-cc=self
argument.

	Arnd

