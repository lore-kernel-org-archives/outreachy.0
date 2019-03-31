X-GM-THRID: 6674697932517670912
X-Received: by 2002:a24:1fc8:: with SMTP id d191mr5425804itd.29.1554074215495;
        Sun, 31 Mar 2019 16:16:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:456a:: with SMTP id y103ls2237745ita.2.gmail; Sun, 31
 Mar 2019 16:16:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy6nTAHqckV3zk9KMIreHjVCgFdhZMSlKAcPiAMQZenpotTFQI3gb23Np+pc6CfireFM+TP
X-Received: by 2002:a24:3ccb:: with SMTP id m194mr5904151ita.40.1554074214425;
        Sun, 31 Mar 2019 16:16:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554074214; cv=none;
        d=google.com; s=arc-20160816;
        b=T977296OpdTs6Aii0Vui307oe6TEWVj+ozBpdgB5/vOq6O6q6LCF/vjXiVJ5b2e/Iz
         Au0E2sYxg4DbYPweZSpVpw1HRs7itCZaGAPgtHHiAPQDOOIeXprD4Hh1D9wz8p5Qh4Fe
         +qf09HxRM+at77e3imlkXEfo3QfSW+7wBIGlbpfbmFyFx0x4F1vhkLEVolXrP3+vDb0s
         Vv2LVM7ZAR5Z0IlCpUzrH6TJWPn0mcBlEEsfvbnCJ9jKCzorSHH/z7uHUXP/od+UnL0+
         DliBjgBNNJfTVr3zHEnOFh186Sq9t3g2FBsB5LCDWf/ydvtxdIRGF/Iz/yuxIh1V326Y
         xYzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=k2tJHN01lw/cCEwsl4dEXNoKSVJ4C8StUwwDs9wdiYQ=;
        b=N93szlEXUscfjJTBRwjVIzCYj+7XI1JdRHedAgQMDCfhvNxbj1+y2h7sStJhSPFezi
         KT3aTa67JoJeW79o83uuaDTPTk+61OI/FaF6D4d97pww15YbkK70UqZu1A3kqUbPfLrr
         N3ghz7fkPxq3dJCJBPjuTQaz3x+uEEygaJOyudGxaOqotn5umRh6mg9TxfskXpJ1hP2t
         W0WAJmP/kd0v3prLRkePB/xiMLav5UTqkSAKEHlHc5MSk1YCF4dorU6d3dCKjx0XipmC
         ia/oZaudcy7Y63C/fnhgacZvkJ2rl/w9NxFJihbgmUmdkp/+Qbwx648fQL2b3wOfVtUD
         0tow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bar8Xv0r;
       spf=pass (google.com: domain of dr.saba7@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=dr.saba7@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dr.saba7@gmail.com>
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id u1si1053154itj.2.2019.03.31.16.16.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 16:16:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of dr.saba7@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bar8Xv0r;
       spf=pass (google.com: domain of dr.saba7@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=dr.saba7@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd42.google.com with SMTP id e13so6210880ioq.6;
        Sun, 31 Mar 2019 16:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=k2tJHN01lw/cCEwsl4dEXNoKSVJ4C8StUwwDs9wdiYQ=;
        b=bar8Xv0rGTOvks7vTpUnZ3pwfLSobzUFHNdNcfuGHs5ANPubHvbDJanQFdNVwdSIDM
         pM4SEeINnvEozsFgSJz19GdsPzY160AkAiPqom3AIAScoKcT+21aPpZDEnvREPPZVuKl
         ny6U8qzM78mMJoIFETZLL7on6c6EVltknOlZR2t0dUi0SH7G2QH9wstkxDdX71t2uLLQ
         Qd9uCp8f8Yr4qwadVMe4SCtZi/xbL0FgNLukPnBp8fMMIRBZFds11bgPNdx0QEhYlK0Y
         8iiP5+FlbSNL0j0L7z617oQi74nAIaN7ZjbuNp8kjLZUzfZ4V+9JlcigG9f7nrnfVmeu
         8WRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=k2tJHN01lw/cCEwsl4dEXNoKSVJ4C8StUwwDs9wdiYQ=;
        b=W95RPSQ7F3jRZZPq1jxA8Z6ao6kRxwbfKC+PnF7GBiXtm3JhpeTwCWMfLzXRL7zorU
         oOtg7uUDtpwUwr5hV+JWMthyK/ueL0dBWCEftjyU9L180t4lJH1c0B4drYinqkR/yi8n
         wQgGCrKEsFJAQmrwHcLkWyXca77r65HLwjCHMIRjSexx5XT9iAmlN2vLFOOfm69ZVDMw
         Ihi81y0jajBDOQQ5EhMRJERzuKoEhKOSUmjXjgKKefugEbaPH8ofOHzVuk1IG9XeCRH8
         iwPfO1pvGIg/CLl/ooVfbmk5C5lWUKLvJrWRKLksHjasZgzKy70kbEWrZ3PIpyLD2axH
         2vTQ==
X-Gm-Message-State: APjAAAWtTV16En/FaPSLxnjB5aW3OoCarW4tK6IXm7qe3AjlshOsnJXT
	AXH6PBJOsMdQxJF7OsBfVZGEJ5wzBaxV7V9eLtuyEg==
X-Received: by 2002:a6b:f702:: with SMTP id k2mr35796288iog.31.1554074213825;
 Sun, 31 Mar 2019 16:16:53 -0700 (PDT)
MIME-Version: 1.0
References: <CADm1dMMKfCScch12qbUk22NobS3wQGDf4tPjA55fPtsVO0v-cg@mail.gmail.com>
 <CAONQwjVRGC_4uftjyYmo9Tr1HCbhK=GHg6cXynhi_BSXsCddgw@mail.gmail.com>
 <CACA=w-UdAu8YOWk-P2PuUW0Md+x0jUj+icCnZsyWVWG=GuQXLQ@mail.gmail.com>
 <CACA=w-Ww_KSmvE-4xqH_qwANTahxHZ5o=ynih-YogmQCVuhs=Q@mail.gmail.com>
 <CA+MEJqYngSkJczhF=Bv94kD166SVM0OKk-VwKbBz8+Qp_DDd7Q@mail.gmail.com>
 <CAOGiO7tWdZj-jp50qhCVr5N0ZeXGdCtsHFW57_acJxT6_bhbEg@mail.gmail.com>
 <CAOGiO7tyA9nSO+XNN6oYgUb3ddU=qqUfR-Yocvy6N8Q2oiybMA@mail.gmail.com>
 <CAOGiO7vdvN7kCm-OH19xh+EptbZitgnsoaYcUp43FLMxm1UtwQ@mail.gmail.com>
 <CAOGiO7vnUEmG0spm6OBiJ7zBkje-=F1yVm_fouRGVZU7v9ue5w@mail.gmail.com>
 <CAOGiO7vQnSG1gvGs46umboawA0LawG6jKtzNQzzRn1DoYnRKsA@mail.gmail.com>
 <CAOGiO7sabh8+wZv7qNcx78V0U4YBpH+3pjE31cUFmZC7yo8PCA@mail.gmail.com>
 <CAOGiO7svwoHjLXyhXEHsS9-288UpzU+tGpEKh=rHYpoEXfX8ZA@mail.gmail.com>
 <CAOGiO7ubCLmYuE-y+0gderx9MMo5w69L_-JVd+aFEfiFL2V6VQ@mail.gmail.com>
 <CAOGiO7sHeth0q7qHp9kHvUjyrPDZ6GwOHqnajf757Xe-_5i28A@mail.gmail.com>
 <CAOGiO7uNgT7D6OYo_q6GbM3SzWSB5miGthEey0yraYFbCUXgcQ@mail.gmail.com>
 <CAOGiO7sJrUxat0QVuYATS2J4072YC0D3FEcO5rYxhf=BBJZ7=A@mail.gmail.com>
 <CAOGiO7t4AE5fBPPpZF6ZL5w5+rjP+BfCTWbVqJfQTHGaEQ_wXQ@mail.gmail.com>
 <CAOGiO7v6HVVss2RA9rUXM1DXrTosveVF2HKX-13_+F_R0ks6WQ@mail.gmail.com>
 <CAOGiO7sxf1JUnETKURR+LoB61Me5t0o+Bdjs9C7H1ZdzLZXt+w@mail.gmail.com>
 <CAOGiO7u_v8m_XH34Z3bGZhrP1hkn_mw_ZmmKCjrVc2p4xFqeTQ@mail.gmail.com>
 <CAOGiO7tHnLT7mBqqaxqznv+ddirR2JUs8NR2f5met-XqkHZJ-Q@mail.gmail.com>
 <CAOGiO7tqguh0W98Bcxp3PjDaYoOZ+3s8CwAj-XM8ZWG4=jRCmQ@mail.gmail.com>
 <CAOGiO7vVp3Q8VsXQmp0-s-VCL_Lts6W=BhPyM267Bmx8MQ8PJQ@mail.gmail.com>
 <CAOGiO7tsCf1o2RTX6yfTm4A_6nph4PRNavQbwsgSNnGAbcCqTA@mail.gmail.com>
 <CAOGiO7sVkhgnx-stuKx3SMXquvEGCj4bxXqCvr7XrCbhKZVtEQ@mail.gmail.com>
 <CAOGiO7v-fnc5tZA4Oo5OToDZ_9NtnPLr3TtxQQvECucVhtoeww@mail.gmail.com>
 <CAOGiO7uwzfZY7=jYTWxw=BU-YxaRD6koQX49s_6b1tDRA0=3Sg@mail.gmail.com>
 <CAD+3gBuA98nMKur1yQfTvZFAuL1xka5bp_HsPYW54LB5J-2H=A@mail.gmail.com>
 <CAD+3gBsPgG6EX-dc5TM229wmekjhg6mqwuAgMPQU+toM7_KVSA@mail.gmail.com>
 <CAD+3gBtRjLArPov7a4O+B+O-7_EjGx1O67rDLQLo5Os1MsX-Xg@mail.gmail.com>
 <CAD+3gBsbPnx9tpVVkiGs9VTypb_JOUL7f3FontrcrqAfq_KOXg@mail.gmail.com>
 <CAJLsR23BcGMeZ1ZwC6jHu3KcvA1JwZyD9YpEBksZ8AFA-XjPPw@mail.gmail.com>
 <CAJLsR21KsESPmgg6dAn7UW+mKk-g0GLWQog67Cak_dD4=3mYkA@mail.gmail.com>
 <CAJLsR22MWehCTetKs4W9wVJE9SNKbaaDfXASQ1iP8xbQJoeeKg@mail.gmail.com>
 <CAJLsR23fZRL337CfxeO6NBDsmpNVVVOJLJsj8g9tQxrX3zzkKw@mail.gmail.com>
 <CAJLsR20mgiXh=oPCjD9SZkmfehFTCJyn05neX5d3Nu2S9qQc0A@mail.gmail.com>
 <CAJLsR22w7OM_D=Yz4TYXgfuFez0n9AMP2MiWrAGXrLXFxo89cg@mail.gmail.com>
 <CAJLsR21bcHssHyBwBEWU-Njfi+mvjZfG=p52YHPsBQM7DXJ70A@mail.gmail.com>
 <CAJLsR22U7s9kZa-pr2k=i_RVDLomvzzvZkcBDPJDHAcuEMSavQ@mail.gmail.com>
 <CAJLsR20YkAaYRZ7s4CgHMZ6skGT1p8mUvdRqD+_UMSafvjhvtQ@mail.gmail.com>
 <CAJLsR21oZWGm0TsZEAA2yzjEZtAXjhcwOnLHkz0fCps6fj5BCA@mail.gmail.com>
 <CAJLsR221ms5vvrhsxiCR_xc7ajOV1CqKRQ=AWp2mamhEtCyirA@mail.gmail.com>
 <CAJLsR23SDZaBKnDVkRt6KopB74L9p+aLaaprQtLijQi3+Uxb5g@mail.gmail.com>
 <CAJLsR20LZOBJ2cTfjGru-MiehJ5JjUQTeUU_kQ7gy5gYDbnqMw@mail.gmail.com>
 <CAJLsR20wdvSmLr=8zwufM8bAN+BHt=YDnEJho52NHvmtOEbL2w@mail.gmail.com>
 <CAJLsR225NHvoyOHQ+qN6SENZTVodNYetKbSFrcfgokY_resaeA@mail.gmail.com>
 <CAJLsR22yw7H2Si_CrTq93qSGfMBcYpPEtPTrHojScNKxbKXpDg@mail.gmail.com>
 <CAJLsR23uvD8nySXfjWmQvkTMCNa6aOy310A3TnMUHKnadjf5ng@mail.gmail.com>
 <CAJLsR23FMJkgb0KdkOGFfo=SwoacuSJpc62MWh9CPG0=UyMd8g@mail.gmail.com>
 <CAJLsR23QXYR9m4zRFZi6_fmDa2mLu_N7SUf+iS=e2tEOn8nfKQ@mail.gmail.com>
 <CAJLsR211rFnum_CAR=1iCgs3kytcuD=Zw+1Nu0ZyuGzJHpq5Ew@mail.gmail.com>
 <CAHXVGwAA_ZnHm0DtoZCCX06zO_VBerw5964eY8a7JKXb+vGO_w@mail.gmail.com>
 <CAHXVGwCwebdDnbnJs_neGfr_nho60H9VmKTXSLL-tTF=-g_3WA@mail.gmail.com>
 <CAFxgSVKZPuZBhzZPSPtyVBL_mdF6qSehhHz+Jk5BofTD4+tCMg@mail.gmail.com>
 <CAFxgSVKpe2AwrdRTY+pqe16PhDSwy_bmJohRoU25sxKAoOBLew@mail.gmail.com>
 <CAFxgSVJB3k5nbeS_JZt6WPjCkxgU7roo5H1DDuQgraUWD6LQag@mail.gmail.com>
 <CAMYKJGfMocpVYQQV1JodFPDVxS2fp7tXC2v0z88m_eRxEa8gdA@mail.gmail.com>
 <CAMYKJGe6vYVZ+nSUMm3+36X_dsYnZpEn+Xoy1ehDH4L7JMOTtA@mail.gmail.com>
 <CAFFmx6qt3V16Or_dmaNPVR76ng92214VmOnZXdvsD3CmziLx3g@mail.gmail.com>
 <CAEbEKi=vC+HY0c85Rs=oGFuMakoMPLN-0WBN9=Ae45d+yxhAYA@mail.gmail.com>
 <CAEbEKimqXpBMOxEdRf9N_HmkUHgYJNnj2L+SmtXTv57WiEDtfg@mail.gmail.com>
 <CAEbEKim+LFgGZ=x=TPJm8x1dd=yKk0UastRY3B1BYOwpa7tfAw@mail.gmail.com>
 <CAEbEKi=FEd2hp9o7MbvM-DoCY9Q-3YKqM6v3RZwC_oZKKznb=Q@mail.gmail.com>
 <CAEbEKin7gx2vLPLNkb2DgUAMYXJiaEZRTKncds0r0=8_VRJ_WQ@mail.gmail.com>
 <CAEbEKinqsS6tRGU4irwrhwE4kymFoDfp5HPWBUSd0E4qrCozRg@mail.gmail.com>
 <CAEbEKikhRMOAjgkXmMG8rxrbkftYcctjs6k5YwuR33EqswFdkw@mail.gmail.com>
 <CAEbEKim1LEosD8zB3gCfz9ZU3qx=5+DxG+eWk=_B0mg0ZiUNsQ@mail.gmail.com>
 <CAEbEKinRepzvgn=vDRpuTb4nedfvBVEbHPNjHrd_dEMnNqJeEg@mail.gmail.com>
 <CAEbEKikyCapgjLGcq-W-vkmrp=AoQen3YmzUKg-Qceoi4VuFFw@mail.gmail.com>
 <CAEbEKikveUE4zJg-VSQUx63O1ZQih008McrB3ky7LUaXkE0GgQ@mail.gmail.com>
 <CAEbEKimSjVc70yZRr3-k64ApWCKXePkG-3FLivJM1vu2MFHnfA@mail.gmail.com>
 <CAEbEKik=_6CvtfqJLu-8ptC33ZE+OtdPxQXsGX5Dcg7WSRWvGw@mail.gmail.com>
 <CAEbEKikAexyXiJ+45q5FCni7bUbJQLoaHJPmfdMWCVowpiJPtQ@mail.gmail.com>
 <CAEbEKinSQyKt6_uphyXyA1aMhLnZrCto-aFKaDS0mgYoN0H=jA@mail.gmail.com>
 <CAEbEKikb9R13FWjNuiTkZQmWY+79GZX3RLnLn9FKXAJjchLd0Q@mail.gmail.com>
 <CAEbEKikdS2LTkO1-++nDtJJwYc0JFJnvc=OU85eA0nyX6tqnPw@mail.gmail.com>
 <CAEbEKi=AuZ4P3OcFJo9NG7jc6PzaLBY+z5JQhEOykLQbdTYgnA@mail.gmail.com>
 <CAEbEKinaqYc2t3D5TK0szXAKVYDfj746RsaB-5huCdW8fEnNkA@mail.gmail.com>
 <CAEbEKim0Vn6RvDpet_emk3qDu+X59HrVyU8wjWFnzR2UJam=Jg@mail.gmail.com>
 <CAEbEKi=1+GKb8EKB=Hc3vQhRtHTAdnn6dW=2YGq9m_2bM_NGzw@mail.gmail.com>
 <CAEbEKinw8wFna1FBS_y3w6k+mnyEV3PTCvOdouPRsHT5gsVNcA@mail.gmail.com>
 <CAEbEKinv0-C9vt9VtVmu3tXm5FFQm+SX4=p_y2xrcLFBi2bh=g@mail.gmail.com>
 <CAEbEKi=QYmpr+y8nZ2X7SeNAH_xqn_kFZn6uLQWZGgyWmVyg-w@mail.gmail.com>
 <CAEbEKi=JmNHTjBy+3KBqR3jtc6qOdu_ubP6gvUm0EXRjeU2=OQ@mail.gmail.com>
 <CAEbEKin3LONtvZgpzw0igajJyypozzhScu4TV2-eUFr7WtrrzQ@mail.gmail.com>
 <CAEbEKikqTw_zEqkzA+H-O4+fLx1mWTMj8+LyEGp5uKBRm5kmOA@mail.gmail.com>
 <CAP7CLH_f4opG06Gw7sxvKRbzTRYe+5GwLYchGbk0vy=epc88NQ@mail.gmail.com>
 <CAP7CLH_94d2ER3rWyiurFYs16dXzZT6A6nfJ5MvErKgVqCeKVA@mail.gmail.com>
 <CAP7CLH9Hx44ZH1K2-PAcjJ8oVWJK59qe7JSzHRoC5Sudej8-AA@mail.gmail.com>
 <CAPhT0814yJt5MGEikCxS2dvLLh-WXtnGcpWxXNZeKFT65iKdBw@mail.gmail.com>
 <CAJNWts1Y77KVNnBik6Jx1UXiZgn3ZYcB5aPgToMZ+KFamN_NDA@mail.gmail.com>
 <CAJNWts2wSMwXB3V-0QJ9S8x1LZYOdSMs5aNYeG-EHrAKCbiPvA@mail.gmail.com>
 <CAJNWts1peuTTZbciy7gr4XPJRRN2a26_pYOb1eHzMtejYXh4cw@mail.gmail.com>
 <CAJNWts1yUXXKe6ndt929SYKKVgyWW6q0Jd2vVEAEo6NPTe=AqQ@mail.gmail.com>
 <CAJNWts3w=D3ABPxZu--bJTGOuxsxr2Jw+Ks8cxNP1QM7XW+uAA@mail.gmail.com>
 <CAJNWts1wX552n=UaByhff0ZYCAF5DbWQWFv2ux6Yzowr9p4Pcw@mail.gmail.com>
 <CAJNWts3YWHGx0Sjt5uRGShzoy+eN+PppjEWpbQwxdvL=YZqShA@mail.gmail.com>
 <CAJNWts1zNiBjWb3rj4-xpyRQOeQ944Y4_v74c0eyHubbB0q26g@mail.gmail.com>
 <CAJNWts1t9C6B9d5SRpbASF5Oe9F6VN4yEvkc8Qh+ycCm3F_pwg@mail.gmail.com>
 <CAJNWts1U82JafBapi4Tmpxy--_Yph2Lnvz16qyPs8SNhz719Zg@mail.gmail.com>
 <CAJNWts0i87ukTQY3yrby5AaupiRFbHFwNjP88_w2XR_MqLiXZw@mail.gmail.com>
 <CACfCHjFeoO-0fBvL4eiyNF5MyQPwt8GMLKP+qzpbO9B=6DRYPA@mail.gmail.com>
 <CACfCHjFajZjtqDH9vKexbtObK=cNRsaNyi_ziN6jY4EHqZBXGA@mail.gmail.com>
 <CACfCHjGBB0AWSyQr5f-KreuaCUCS-Qg+-=2GkVa9NV8AcfYr7Q@mail.gmail.com>
 <CACfCHjHak1vpZV6AdcwJUAj7mKHVhjX5_KAaiu9j=oRywoKLWg@mail.gmail.com> <CACfCHjET0YVkYmQNUZuiyiUaCXD8ciPV3qpHCFAwZrLFb36=9w@mail.gmail.com>
In-Reply-To: <CACfCHjET0YVkYmQNUZuiyiUaCXD8ciPV3qpHCFAwZrLFb36=9w@mail.gmail.com>
From: sady assad <dr.saba7@gmail.com>
Date: Mon, 1 Apr 2019 02:16:33 +0300
Message-ID: <CAEfki2_XomTmAbc3amucYfXrMCfVX4tqXFWFqw9hp496uwdWQQ@mail.gmail.com>
Subject: =?UTF-8?B?RndkOiBVcyBjb25ncmVzcyBoZWFyaW5nIG9mIG1hYW4gYWxzYWFuIE1vbmV5IGxhdW5kcg==?=
	=?UTF-8?B?eSDZgti22YrYqSDYp9mE2YPZiNmG2LrYrNix2LMg2YTYutiz2YrZhCDYp9mE2KPZhdmI2KfZhCDZhNmE?=
	=?UTF-8?B?2YXZhNmK2KfYr9mK2LEg2YXYudmGINin2YTYtdin2YbYuQ==?=
To: uk.media.radio.archers@googlegroups.com, 
	uk.legal.moderated@googlegroups.com, lncvotes@googlegroups.com, 
	uk.radio.amateur@googlegroups.com, circulator38@googlegroups.com, 
	pax-news@googlegroups.com, outreachy-kernel@googlegroups.com, 
	or.politics@googlegroups.com, odtuemd@googlegroups.com, 
	edm.general@googlegroups.com, scot.politics@googlegroups.com, 
	my-town-government-01364@googlegroups.com, mswgooglegroup@googlegroups.com, 
	timasters@googlegroups.com, de.etc.finanz.misc@googlegroups.com
Content-Type: multipart/mixed; boundary="00000000000078b7a805856c19a7"

--00000000000078b7a805856c19a7
Content-Type: multipart/alternative; boundary="00000000000078b7a505856c19a5"

--00000000000078b7a505856c19a5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

WW91VHViZSB2aWRlb3Mgb2YNCg0KDQoNCiBVLlMuIENvbmdyZXNzIG1vbmV5IGxhdW5kZXJpbmcg
aGVhcmluZw0KDQoNCm9mDQoNClNhdWRpIEJpbGxpb25haXJlICAiIE1hYW4gIEFsIHNhbmVhIg0K
DQogd2l0aCAqYmFuayBvZiBBbWVyaWNhKg0KDQoNCmFuZCAgVGhlICBvd25lciBvZiBTYWFkIEhv
c3BpdGFsIGFuZCAgU2Nob29scw0KDQogaW4gdGhlIEVhc3Rlcm4gUHJvdmluY2UgaW4gKlNhdWRp
IEFyYWJpYSoNCg0KDQoNCmFuZCB0aGUgQ2hhaXJtYW4gb2YgdGhlIEJvYXJkIG9mIERpcmVjdG9y
cyBvZiBBd2FsIEJhbmsgIGluICpCYWhyYWluKg0KDQoNCldpdGggQXJhYmljIFN1YnRpdGxlcw0K
DQoNCg0KDQoNCirZhdmI2YLYuSDYp9mE2YrZiNiq2YrZiNioINin2YTYsNmKINi52LHYtiDYrNmE
2LPYqSDYp9iz2KrZhdin2Lkg2KfZhNmD2YjZhtis2LHYsyDYp9mE2KPZhdix2YrZg9mKICoNCg0K
KiDZhNmF2KrYp9io2LnYqSDZhti02KfYt9in2Kog2LrYs9mEINin2YTYo9mF2YjYp9mEINmI2YbY
tNin2LfYp9iqKg0KDQoNCg0KKtin2YTYs9i52YjYr9mKINmF2LnZhiDYudio2K/Yp9mE2YjYp9it
2K8g2KfZhNi12KfZhti5Kg0KDQoNCg0KKtmF2KfZhNmDINmF2LPYqti02YHZiSAg2YjYtNix2YPY
qSDYs9i52K8gINmI2YXYr9in2LHYsyDYs9i52K8g2KjYp9mE2YXZhti32YLYqSDYp9mE2LTYsdmC
2YrYqSDYqNin2YTYs9i52YjYr9mK2KkgICDZiNix2KbZitizINmF2KzZhNizDQrYp9iv2KfYsdip
INio2YbZgyDYp9mI2KfZhCDYp9mE2KjYrdix2YrZhtmKKg0KDQoNCg0KKtmF2KrYsdis2YUg2KjY
p9mE2YTYutipINin2YTYudix2KjZitipKg0KDQoNCg0KaHR0cDovL3d3dy55b3V0dWJlLmNvbS93
YXRjaD92PW1JQk5uUXZoVThzDQoNCg0KDQoNCg0KDQoNCg0KDQoNCg0KLi4uDQoNCltNZXNzYWdl
IGNsaXBwZWRdDQo=
--00000000000078b7a505856c19a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><br><br><div dir=3D"ltr"><br><d=
iv class=3D"gmail_quote"><br><div dir=3D"ltr"><div class=3D"gmail_quote"><d=
iv dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gm=
ail_quote"><br><div dir=3D"ltr"><div class=3D"gmail_quote"><br><br><div dir=
=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_qu=
ote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div clas=
s=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"l=
tr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote">=
<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"=
gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><=
div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div =
dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail=
_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div c=
lass=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=
=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_qu=
ote"><div dir=3D"ltr"><div class=3D"gmail_quote"><br><div dir=3D"ltr"><div =
class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=
=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_qu=
ote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div clas=
s=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"l=
tr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote">=
<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"=
gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><=
div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div =
dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail=
_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div c=
lass=3D"gmail_quote"><div class=3D"m_4969674427463734723m_-8977509334027439=
861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_29506=
71603987798537m_4510805869328595129m_7353279886003186147m_57950493043991924=
15m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_4328146=
256894303270m_8032681368690692765m_-4158281573136614853m_-42785464499981138=
62m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_-606606=
9437904457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767=
484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_6966737=
99268915122m_6553687040819910946m_115938388387323268m_4761616352644549434m_=
-3513777754456038708m_4043923721510201449m_8439076215260255433m_89670921355=
26556366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-42=
67927354475654337m_7611252690734340973m_-8027753483278646055m_-721696950736=
7670579m_-4034653188979301100m_3265050832794637623HOEnZb"><div class=3D"m_4=
969674427463734723m_-8977509334027439861m_-3148426612084602578m_-1305972213=
606089458m_5958271634659300202m_2950671603987798537m_4510805869328595129m_7=
353279886003186147m_5795049304399192415m_5254634956991466343m_-267405643781=
1472753m_8854484427495934432m_4328146256894303270m_8032681368690692765m_-41=
58281573136614853m_-4278546449998113862m_8639408421370773110m_8706942729204=
879127m_-1279322636548333820m_-6066069437904457241m_-6483286325313852626m_-=
1413988085184529128m_-643408823540767484m_5332274037928118056m_417774604781=
8211183m_-608796161542894190m_696673799268915122m_6553687040819910946m_1159=
38388387323268m_4761616352644549434m_-3513777754456038708m_4043923721510201=
449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_2125241=
640333008915m_399880005603669064m_-4267927354475654337m_7611252690734340973=
m_-8027753483278646055m_-7216969507367670579m_-4034653188979301100m_3265050=
832794637623h5"><div dir=3D"ltr"><div class=3D"gmail_quote"><div class=3D"m=
_4969674427463734723m_-8977509334027439861m_-3148426612084602578m_-13059722=
13606089458m_5958271634659300202m_2950671603987798537m_4510805869328595129m=
_7353279886003186147m_5795049304399192415m_5254634956991466343m_-2674056437=
811472753m_8854484427495934432m_4328146256894303270m_8032681368690692765m_-=
4158281573136614853m_-4278546449998113862m_8639408421370773110m_87069427292=
04879127m_-1279322636548333820m_-6066069437904457241m_-6483286325313852626m=
_-1413988085184529128m_-643408823540767484m_5332274037928118056m_4177746047=
818211183m_-608796161542894190m_696673799268915122m_6553687040819910946m_11=
5938388387323268m_4761616352644549434m_-3513777754456038708m_40439237215102=
01449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_21252=
41640333008915m_399880005603669064m_-4267927354475654337m_76112526907343409=
73m_-8027753483278646055m_-7216969507367670579m_-4034653188979301100m_32650=
50832794637623m_-8010105586882046680HOEnZb"><div class=3D"m_496967442746373=
4723m_-8977509334027439861m_-3148426612084602578m_-1305972213606089458m_595=
8271634659300202m_2950671603987798537m_4510805869328595129m_735327988600318=
6147m_5795049304399192415m_5254634956991466343m_-2674056437811472753m_88544=
84427495934432m_4328146256894303270m_8032681368690692765m_-4158281573136614=
853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m_-12793=
22636548333820m_-6066069437904457241m_-6483286325313852626m_-14139880851845=
29128m_-643408823540767484m_5332274037928118056m_4177746047818211183m_-6087=
96161542894190m_696673799268915122m_6553687040819910946m_115938388387323268=
m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_843907621=
5260255433m_8967092135526556366m_1627725659441522800m_2125241640333008915m_=
399880005603669064m_-4267927354475654337m_7611252690734340973m_-80277534832=
78646055m_-7216969507367670579m_-4034653188979301100m_3265050832794637623m_=
-8010105586882046680h5"><div dir=3D"ltr"><div class=3D"gmail_quote"><div cl=
ass=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612084602578m_-=
1305972213606089458m_5958271634659300202m_2950671603987798537m_451080586932=
8595129m_7353279886003186147m_5795049304399192415m_5254634956991466343m_-26=
74056437811472753m_8854484427495934432m_4328146256894303270m_80326813686906=
92765m_-4158281573136614853m_-4278546449998113862m_8639408421370773110m_870=
6942729204879127m_-1279322636548333820m_-6066069437904457241m_-648328632531=
3852626m_-1413988085184529128m_-643408823540767484m_5332274037928118056m_41=
77746047818211183m_-608796161542894190m_696673799268915122m_655368704081991=
0946m_115938388387323268m_4761616352644549434m_-3513777754456038708m_404392=
3721510201449m_8439076215260255433m_8967092135526556366m_162772565944152280=
0m_2125241640333008915m_399880005603669064m_-4267927354475654337m_761125269=
0734340973m_-8027753483278646055m_-7216969507367670579m_-403465318897930110=
0m_3265050832794637623m_-8010105586882046680m_9060476606028596242HOEnZb"><d=
iv class=3D"m_4969674427463734723m_-8977509334027439861m_-31484266120846025=
78m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_4510805=
869328595129m_7353279886003186147m_5795049304399192415m_5254634956991466343=
m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_803268136=
8690692765m_-4158281573136614853m_-4278546449998113862m_8639408421370773110=
m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-6483286=
325313852626m_-1413988085184529128m_-643408823540767484m_533227403792811805=
6m_4177746047818211183m_-608796161542894190m_696673799268915122m_6553687040=
819910946m_115938388387323268m_4761616352644549434m_-3513777754456038708m_4=
043923721510201449m_8439076215260255433m_8967092135526556366m_1627725659441=
522800m_2125241640333008915m_399880005603669064m_-4267927354475654337m_7611=
252690734340973m_-8027753483278646055m_-7216969507367670579m_-4034653188979=
301100m_3265050832794637623m_-8010105586882046680m_9060476606028596242h5"><=
div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"g=
mail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><d=
iv class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=3D"gmail_quo=
te"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=
=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=3D"gmail_quote"><div=
 dir=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"=
ltr"><div class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=3D"gm=
ail_quote"><div><div><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=
=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=
=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=3D"gmail_quote"><div=
><div><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div cla=
ss=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=3D"gmail_quote"><d=
iv><div><div dir=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=3D"l=
tr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote">=
<div dir=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div=
 class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=3D"gmail_quote=
"><div dir=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=3D"ltr"><d=
iv class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=3D"gmail_quo=
te"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=
=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"lt=
r"><div class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=3D"gmai=
l_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=3D"=
ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"=
><div><div><div dir=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=
=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=
=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div><div><div=
 dir=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div cla=
ss=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=3D"gmail_quote"><d=
iv><div><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div c=
lass=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=3D"gmail_quote">=
<div><div><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div=
 class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=3D"gmail_quote=
"><div dir=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=3D"ltr"><d=
iv class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=3D"gmail_quo=
te"><div dir=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=3D"ltr">=
<div class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=3D"gmail_q=
uote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div cla=
ss=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=3D"gmail_quote"><d=
iv dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gm=
ail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><di=
v class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=3D"gmail_quot=
e"><div><div><div dir=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=
=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=
=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div><div><div=
 dir=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"=
ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"=
><div><div><div dir=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=
=3D"ltr"><div class=3D"gmail_quote"><div><div><div dir=3D"ltr"><div class=
=3D"gmail_quote"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"lt=
r"><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center">=C2=
=A0</p>


















































<p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><span la=
ng=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;font-size:14pt">YouTube <span>videos of</span></span></p>













<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;font-size:20pt"><span>=C2=A0</span></span></s=
pan></p>
































































<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&quot;,&quot;san=
s-serif&quot;;font-size:20pt"><span>=C2=A0</span><span>U.S. Congress</span>=
 </span><span><span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&=
quot;,&quot;sans-serif&quot;;font-size:20pt">money</span></span><span lang=
=3D"EN" style=3D"color:red;font-family:&quot;Arial&quot;,&quot;sans-serif&q=
uot;;font-size:20pt"> <span>laundering</span></span><span lang=3D"EN" style=
=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;,&quot;sans-serif&quot=
;;font-size:20pt"> </span><span><span lang=3D"EN" style=3D"color:red;font-f=
amily:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt">hearing</spa=
n></span><span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;;font-size:20pt"></span></p>
































































<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&quot;,&quot;san=
s-serif&quot;;font-size:10pt"><br>
</span><span><span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;font-size:20pt">of</span></span><span lang=3D"E=
N" style=3D"color:red;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;=
font-size:20pt"> </span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font=
-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt"><br>

































































</span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;font-size:10pt"><br>
</span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;font-size:20pt">Saudi <span>Billionaire</sp=
an></span><font color=3D"#000000" face=3D"Times New Roman" size=3D"3">
<span>=C2=A0</span>&quot; </font><span><span lang=3D"EN" style=3D"color:red=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt">Maan<=
/span></span><span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&q=
uot;,&quot;sans-serif&quot;;font-size:20pt"> <span><span>=C2=A0</span>Al sa=
nea</span></span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family=
:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt">&quot;</span></p>
































































<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;;font-size:20pt"><span>=C2=A0</span>with
</span><u><span lang=3D"EN" style=3D"color:red;font-family:&quot;Arial&quot=
;,&quot;sans-serif&quot;;font-size:20pt">bank of America</span></u><span la=
ng=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;font-size:20pt"> </span><span style=3D"color:rgb(51,51,51)=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt"></spa=
n></p>
































































<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;;font-size:10pt"><br>
</span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;font-size:20pt">and <span>=C2=A0</span>The<=
span>=C2=A0
</span>owner of <span>Saad</span> Hospital and <span>=C2=A0</span><span>Sch=
ools</span></span></p><font color=3D"#000000" face=3D"Times New Roman" size=
=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;=
,&quot;sans-serif&quot;;font-size:20pt"><span>=C2=A0</span><span>in</span> =
<span>the</span> <span>Eastern</span> <span>Province</span> <span>in </span=
></span><span><u><span lang=3D"EN" style=3D"color:red;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;font-size:20pt">Saudi Arabia</span></u></sp=
an><span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;font-size:20pt"></span></span></p>
































































<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;font-size:10pt"><span>=C2=A0</span></span></s=
pan></p>
































































<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial=
&quot;,&quot;sans-serif&quot;;font-size:20pt">and</span></span><span lang=
=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;font-size:20pt"> the <span>Chairman of the Board</span>
<span>of</span> <span>Directors</span> <span>of</span>
<span>Awal Bank <span>=C2=A0</span>in </span></span><span><u><span lang=3D"=
EN" style=3D"color:red;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
;font-size:20pt">Bahrain</span></u></span><span><span lang=3D"EN" style=3D"=
color:rgb(51,51,51);font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;fo=
nt-size:20pt"> </span></span><span lang=3D"EN" style=3D"color:rgb(51,51,51)=
;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:20pt"><br>

































































</span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;font-size:10pt"><br>
<br>
</span><span><span lang=3D"EN" style=3D"color:rgb(51,51,51);font-size:14pt"=
><font face=3D"Times New Roman">With Arabic Subtitles</font></span></span><=
/p><font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
b><span lang=3D"AR-SY" style=3D"font-size:22pt" dir=3D"RTL"><font color=3D"=
#000000" face=3D"Times New Roman">=C2=A0</font></span></b></p><font color=
=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
b><span lang=3D"AR-SY" style=3D"font-size:18pt" dir=3D"RTL"><font color=3D"=
#000000" face=3D"Times New Roman">=C2=A0</font></span></b></p><font color=
=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font color=3D"#000000"><font face=3D"Times New Roman"><b><span lang=3D"AR-S=
A" style=3D"font-size:20pt" dir=3D"RTL">=D9=85=D9=88=D9=82=D8=B9 =D8=A7=D9=
=84=D9=8A=D9=88=D8=AA=D9=8A=D9=88=D8=A8 =D8=A7=D9=84=D8=B0=D9=8A =D8=B9=D8=
=B1=D8=B6 =D8=AC=D9=84=D8=B3=D8=A9 =D8=A7=D8=B3=D8=AA=D9=85=D8=A7=D8=B9 =D8=
=A7=D9=84=D9=83=D9=88=D9=86=D8=AC=D8=B1=D8=B3
=D8=A7=D9=84=D8=A3=D9=85=D8=B1=D9=8A=D9=83=D9=8A </span></b><b><span style=
=3D"font-size:20pt"></span></b></font></font></p><font color=3D"#000000" fa=
ce=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
b><span style=3D"font-size:20pt"><font color=3D"#000000"><font face=3D"Time=
s New Roman"><span>=C2=A0</span><span lang=3D"AR-SA" dir=3D"RTL">=D9=84=D9=
=85=D8=AA=D8=A7=D8=A8=D8=B9=D8=A9 =D9=86=D8=B4=D8=A7=D8=B7=D8=A7=D8=AA =D8=
=BA=D8=B3=D9=84 =D8=A7=D9=84=D8=A3=D9=85=D9=88=D8=A7=D9=84 =D9=88=D9=86=D8=
=B4=D8=A7=D8=B7=D8=A7=D8=AA</span></font></font></span></b></p>
































































<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font face=3D"Times New Roman"><b><span style=3D"color:rgb(84,141,212);font-=
size:10pt"><span>=C2=A0</span></span></b><b><span style=3D"color:red;font-s=
ize:10pt"></span></b></font></p>
































































<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
b><span lang=3D"AR-SA" style=3D"color:red;font-size:18pt" dir=3D"RTL"><font=
 face=3D"Times New Roman">=D8=A7=D9=84=D8=B3=D8=B9=D9=88=D8=AF=D9=8A =D9=85=
=D8=B9=D9=86 =D8=B9=D8=A8=D8=AF=D8=A7=D9=84=D9=88=D8=A7=D8=AD=D8=AF =D8=A7=
=D9=84=D8=B5=D8=A7=D9=86=D8=B9</font></span></b></p><font color=3D"#000000"=
 face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span dir=3D"LTR"></span><span dir=3D"LTR"></span><b><span style=3D"color:re=
d;font-size:10pt"><span dir=3D"LTR"></span><span dir=3D"LTR"></span><font f=
ace=3D"Times New Roman"><span>=C2=A0 </span></font></span></b></p>
































































<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
b><span lang=3D"AR-SA" style=3D"font-size:18pt" dir=3D"RTL"><font face=3D"T=
imes New Roman"><font color=3D"#000000">=D9=85=D8=A7=D9=84=D9=83 =D9=85=D8=
=B3=D8=AA=D8=B4=D9=81=D9=89<span>=C2=A0
</span>=D9=88=D8=B4=D8=B1=D9=83=D8=A9 =D8=B3=D8=B9=D8=AF <span>=C2=A0</span=
>=D9=88=D9=85=D8=AF=D8=A7=D8=B1=D8=B3 =D8=B3=D8=B9=D8=AF</font><u><span sty=
le=3D"color:red"> =D8=A8=D8=A7=D9=84=D9=85=D9=86=D8=B7=D9=82=D8=A9 =D8=A7=
=D9=84=D8=B4=D8=B1=D9=82=D9=8A=D8=A9 =D8=A8=D8=A7=D9=84=D8=B3=D8=B9=D9=88=
=D8=AF=D9=8A=D8=A9</span></u><font color=3D"#000000"> <span>=C2=A0</span><s=
pan>=C2=A0</span>=D9=88=D8=B1=D8=A6=D9=8A=D8=B3
=D9=85=D8=AC=D9=84=D8=B3 =D8=A7=D8=AF=D8=A7=D8=B1=D8=A9 =D8=A8=D9=86=D9=83 =
=D8=A7=D9=88=D8=A7=D9=84 </font><u><span style=3D"color:red">=D8=A7=D9=84=
=D8=A8=D8=AD=D8=B1=D9=8A=D9=86=D9=8A</span></u></font></span></b></p><font =
color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
span dir=3D"LTR"></span><span dir=3D"LTR"></span><b><span style=3D"font-siz=
e:18pt"><span dir=3D"LTR"></span><span dir=3D"LTR"></span><font color=3D"#0=
00000"><font face=3D"Times New Roman"><span>=C2=A0 </span></font></font></s=
pan></b></p>
































































<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font color=3D"#000000"><font face=3D"Times New Roman"><b><span lang=3D"AR-S=
A" style=3D"font-size:16pt" dir=3D"RTL">=D9=85=D8=AA=D8=B1=D8=AC=D9=85 =D8=
=A8=D8=A7=D9=84=D9=84=D8=BA=D8=A9 =D8=A7=D9=84=D8=B9=D8=B1=D8=A8=D9=8A=D8=
=A9</span></b><b><span style=3D"color:rgb(84,141,212);font-size:16pt"></spa=
n></b></font></font></p>
































































<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font color=3D"#000000" face=3D"Times New Roman" size=3D"3">=C2=A0</font></p=
><font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
a href=3D"http://www.youtube.com/watch?v=3DmIBNnQvhU8s" target=3D"_blank"><=
font color=3D"#0000ff" face=3D"Times New Roman" size=3D"3">http://www.youtu=
be.com/watch?v=3DmIBNnQvhU8s</font></a></p><span class=3D"m_496967442746373=
4723m_-8977509334027439861m_-3148426612084602578m_-1305972213606089458m_595=
8271634659300202m_2950671603987798537m_4510805869328595129m_735327988600318=
6147m_5795049304399192415m_5254634956991466343m_-2674056437811472753m_88544=
84427495934432m_4328146256894303270m_8032681368690692765m_-4158281573136614=
853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m_-12793=
22636548333820m_-6066069437904457241m_-6483286325313852626m_-14139880851845=
29128m_-643408823540767484m_5332274037928118056m_4177746047818211183m_-6087=
96161542894190m_696673799268915122m_6553687040819910946m_115938388387323268=
m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_843907621=
5260255433m_8967092135526556366m_1627725659441522800m_2125241640333008915m_=
399880005603669064m_-4267927354475654337m_7611252690734340973m_-80277534832=
78646055m_-7216969507367670579HOEnZb"><font color=3D"#888888"><span class=
=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612084602578m_-130=
5972213606089458m_5958271634659300202m_2950671603987798537m_451080586932859=
5129m_7353279886003186147m_5795049304399192415m_5254634956991466343m_-26740=
56437811472753m_8854484427495934432m_4328146256894303270m_80326813686906927=
65m_-4158281573136614853m_-4278546449998113862m_8639408421370773110m_870694=
2729204879127m_-1279322636548333820m_-6066069437904457241m_-648328632531385=
2626m_-1413988085184529128m_-643408823540767484m_5332274037928118056m_41777=
46047818211183m_-608796161542894190m_696673799268915122m_655368704081991094=
6m_115938388387323268m_4761616352644549434m_-3513777754456038708m_404392372=
1510201449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_=
2125241640333008915m_399880005603669064m_-4267927354475654337m_761125269073=
4340973m_-8027753483278646055m_-7216969507367670579m_-4034653188979301100HO=
EnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-897750=
9334027439861m_-3148426612084602578m_-1305972213606089458m_5958271634659300=
202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_5795049=
304399192415m_5254634956991466343m_-2674056437811472753m_885448442749593443=
2m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-4278546=
449998113862m_8639408421370773110m_8706942729204879127m_-127932263654833382=
0m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_-64340=
8823540767484m_5332274037928118056m_4177746047818211183m_-60879616154289419=
0m_696673799268915122m_6553687040819910946m_115938388387323268m_47616163526=
44549434m_-3513777754456038708m_4043923721510201449m_8439076215260255433m_8=
967092135526556366m_1627725659441522800m_2125241640333008915m_3998800056036=
69064m_-4267927354475654337m_7611252690734340973m_-8027753483278646055m_-72=
16969507367670579m_-4034653188979301100m_3265050832794637623m_-801010558688=
2046680m_9060476606028596242m_-8975400041455860880HOEnZb"><font color=3D"#8=
88888"><span class=3D"m_4969674427463734723m_-8977509334027439861m_-3148426=
612084602578m_-1305972213606089458m_5958271634659300202m_295067160398779853=
7m_4510805869328595129m_7353279886003186147m_5795049304399192415m_525463495=
6991466343m_-2674056437811472753m_8854484427495934432m_4328146256894303270m=
_8032681368690692765m_-4158281573136614853m_-4278546449998113862m_863940842=
1370773110m_8706942729204879127m_-1279322636548333820m_-6066069437904457241=
m_-6483286325313852626m_-1413988085184529128m_-643408823540767484m_53322740=
37928118056m_4177746047818211183m_-608796161542894190m_696673799268915122m_=
6553687040819910946m_115938388387323268m_4761616352644549434m_-351377775445=
6038708m_4043923721510201449m_8439076215260255433m_8967092135526556366m_162=
7725659441522800m_2125241640333008915m_399880005603669064m_-426792735447565=
4337m_7611252690734340973m_-8027753483278646055m_-7216969507367670579m_-403=
4653188979301100m_3265050832794637623m_-8010105586882046680m_90604766060285=
96242m_-8975400041455860880m_5829643501325435819HOEnZb"><font color=3D"#888=
888"><span class=3D"m_4969674427463734723m_-8977509334027439861m_-314842661=
2084602578m_-1305972213606089458m_5958271634659300202m_2950671603987798537m=
_4510805869328595129m_7353279886003186147m_5795049304399192415m_52546349569=
91466343m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_8=
032681368690692765m_-4158281573136614853m_-4278546449998113862m_86394084213=
70773110m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_=
-6483286325313852626m_-1413988085184529128m_-643408823540767484m_5332274037=
928118056m_4177746047818211183m_-608796161542894190m_696673799268915122m_65=
53687040819910946m_115938388387323268m_4761616352644549434m_-35137777544560=
38708m_4043923721510201449m_8439076215260255433m_8967092135526556366m_16277=
25659441522800m_2125241640333008915m_399880005603669064m_-42679273544756543=
37m_7611252690734340973m_-8027753483278646055m_-7216969507367670579m_-40346=
53188979301100m_3265050832794637623m_-8010105586882046680m_9060476606028596=
242m_-8975400041455860880m_5829643501325435819m_8572586998478864595HOEnZb">=
<font color=3D"#888888">
































































<font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font><p align=3D"center" style=3D"margin:0cm 0cm 0pt;text-align:center"><=
font color=3D"#000000" face=3D"Times New Roman" size=3D"3">=C2=A0</font></p=
><font color=3D"#000000" face=3D"Times New Roman" size=3D"3">

</font></font></span></font></span></font></span></font></span></font></spa=
n></div><span class=3D"m_4969674427463734723m_-8977509334027439861m_-314842=
6612084602578m_-1305972213606089458m_5958271634659300202m_29506716039877985=
37m_4510805869328595129m_7353279886003186147m_5795049304399192415m_52546349=
56991466343m_-2674056437811472753m_8854484427495934432m_4328146256894303270=
m_8032681368690692765m_-4158281573136614853m_-4278546449998113862m_86394084=
21370773110m_8706942729204879127m_-1279322636548333820m_-606606943790445724=
1m_-6483286325313852626m_-1413988085184529128m_-643408823540767484m_5332274=
037928118056m_4177746047818211183m_-608796161542894190m_696673799268915122m=
_6553687040819910946m_115938388387323268m_4761616352644549434m_-35137777544=
56038708m_4043923721510201449m_8439076215260255433m_8967092135526556366m_16=
27725659441522800m_2125241640333008915m_399880005603669064m_-42679273544756=
54337m_7611252690734340973m_-8027753483278646055m_-7216969507367670579HOEnZ=
b"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-897750933=
4027439861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202=
m_2950671603987798537m_4510805869328595129m_7353279886003186147m_5795049304=
399192415m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_=
4328146256894303270m_8032681368690692765m_-4158281573136614853m_-4278546449=
998113862m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_=
-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_-64340882=
3540767484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_=
696673799268915122m_6553687040819910946m_115938388387323268m_47616163526445=
49434m_-3513777754456038708m_4043923721510201449m_8439076215260255433m_8967=
092135526556366m_1627725659441522800m_2125241640333008915m_3998800056036690=
64m_-4267927354475654337m_7611252690734340973m_-8027753483278646055m_-72169=
69507367670579m_-4034653188979301100HOEnZb"><font color=3D"#888888"><span c=
lass=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612084602578m_=
-1305972213606089458m_5958271634659300202m_2950671603987798537m_45108058693=
28595129m_7353279886003186147m_5795049304399192415m_5254634956991466343m_-2=
674056437811472753m_8854484427495934432m_4328146256894303270m_8032681368690=
692765m_-4158281573136614853m_-4278546449998113862m_8639408421370773110m_87=
06942729204879127m_-1279322636548333820m_-6066069437904457241m_-64832863253=
13852626m_-1413988085184529128m_-643408823540767484m_5332274037928118056m_4=
177746047818211183m_-608796161542894190m_696673799268915122m_65536870408199=
10946m_115938388387323268m_4761616352644549434m_-3513777754456038708m_40439=
23721510201449m_8439076215260255433m_8967092135526556366m_16277256594415228=
00m_2125241640333008915m_399880005603669064m_-4267927354475654337m_76112526=
90734340973m_-8027753483278646055m_-7216969507367670579m_-40346531889793011=
00m_3265050832794637623m_-8010105586882046680m_9060476606028596242m_-897540=
0041455860880HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463=
734723m_-8977509334027439861m_-3148426612084602578m_-1305972213606089458m_5=
958271634659300202m_2950671603987798537m_4510805869328595129m_7353279886003=
186147m_5795049304399192415m_5254634956991466343m_-2674056437811472753m_885=
4484427495934432m_4328146256894303270m_8032681368690692765m_-41582815731366=
14853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m_-127=
9322636548333820m_-6066069437904457241m_-6483286325313852626m_-141398808518=
4529128m_-643408823540767484m_5332274037928118056m_4177746047818211183m_-60=
8796161542894190m_696673799268915122m_6553687040819910946m_1159383883873232=
68m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_8439076=
215260255433m_8967092135526556366m_1627725659441522800m_2125241640333008915=
m_399880005603669064m_-4267927354475654337m_7611252690734340973m_-802775348=
3278646055m_-7216969507367670579m_-4034653188979301100m_3265050832794637623=
m_-8010105586882046680m_9060476606028596242m_-8975400041455860880m_58296435=
01325435819HOEnZb"><font color=3D"#888888"><span class=3D"m_496967442746373=
4723m_-8977509334027439861m_-3148426612084602578m_-1305972213606089458m_595=
8271634659300202m_2950671603987798537m_4510805869328595129m_735327988600318=
6147m_5795049304399192415m_5254634956991466343m_-2674056437811472753m_88544=
84427495934432m_4328146256894303270m_8032681368690692765m_-4158281573136614=
853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m_-12793=
22636548333820m_-6066069437904457241m_-6483286325313852626m_-14139880851845=
29128m_-643408823540767484m_5332274037928118056m_4177746047818211183m_-6087=
96161542894190m_696673799268915122m_6553687040819910946m_115938388387323268=
m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_843907621=
5260255433m_8967092135526556366m_1627725659441522800m_2125241640333008915m_=
399880005603669064m_-4267927354475654337m_7611252690734340973m_-80277534832=
78646055m_-7216969507367670579m_-4034653188979301100m_3265050832794637623m_=
-8010105586882046680m_9060476606028596242m_-8975400041455860880m_5829643501=
325435819m_8572586998478864595HOEnZb"><font color=3D"#888888">
</font></span></font></span></font></span></font></span></font></span></div=
><span class=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612084=
602578m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_451=
0805869328595129m_7353279886003186147m_5795049304399192415m_525463495699146=
6343m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_80326=
81368690692765m_-4158281573136614853m_-4278546449998113862m_863940842137077=
3110m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-648=
3286325313852626m_-1413988085184529128m_-643408823540767484m_53322740379281=
18056m_4177746047818211183m_-608796161542894190m_696673799268915122m_655368=
7040819910946m_115938388387323268m_4761616352644549434m_-351377775445603870=
8m_4043923721510201449m_8439076215260255433m_8967092135526556366m_162772565=
9441522800m_2125241640333008915m_399880005603669064m_-4267927354475654337m_=
7611252690734340973m_-8027753483278646055m_-7216969507367670579HOEnZb"><fon=
t color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977509334027439=
861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_29506=
71603987798537m_4510805869328595129m_7353279886003186147m_57950493043991924=
15m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_4328146=
256894303270m_8032681368690692765m_-4158281573136614853m_-42785464499981138=
62m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_-606606=
9437904457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767=
484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_6966737=
99268915122m_6553687040819910946m_115938388387323268m_4761616352644549434m_=
-3513777754456038708m_4043923721510201449m_8439076215260255433m_89670921355=
26556366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-42=
67927354475654337m_7611252690734340973m_-8027753483278646055m_-721696950736=
7670579m_-4034653188979301100HOEnZb"><font color=3D"#888888"><span class=3D=
"m_4969674427463734723m_-8977509334027439861m_-3148426612084602578m_-130597=
2213606089458m_5958271634659300202m_2950671603987798537m_451080586932859512=
9m_7353279886003186147m_5795049304399192415m_5254634956991466343m_-26740564=
37811472753m_8854484427495934432m_4328146256894303270m_8032681368690692765m=
_-4158281573136614853m_-4278546449998113862m_8639408421370773110m_870694272=
9204879127m_-1279322636548333820m_-6066069437904457241m_-648328632531385262=
6m_-1413988085184529128m_-643408823540767484m_5332274037928118056m_41777460=
47818211183m_-608796161542894190m_696673799268915122m_6553687040819910946m_=
115938388387323268m_4761616352644549434m_-3513777754456038708m_404392372151=
0201449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_212=
5241640333008915m_399880005603669064m_-4267927354475654337m_761125269073434=
0973m_-8027753483278646055m_-7216969507367670579m_-4034653188979301100m_326=
5050832794637623m_-8010105586882046680m_9060476606028596242m_-8975400041455=
860880HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m=
_-8977509334027439861m_-3148426612084602578m_-1305972213606089458m_59582716=
34659300202m_2950671603987798537m_4510805869328595129m_7353279886003186147m=
_5795049304399192415m_5254634956991466343m_-2674056437811472753m_8854484427=
495934432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_=
-4278546449998113862m_8639408421370773110m_8706942729204879127m_-1279322636=
548333820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128=
m_-643408823540767484m_5332274037928118056m_4177746047818211183m_-608796161=
542894190m_696673799268915122m_6553687040819910946m_115938388387323268m_476=
1616352644549434m_-3513777754456038708m_4043923721510201449m_84390762152602=
55433m_8967092135526556366m_1627725659441522800m_2125241640333008915m_39988=
0005603669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646=
055m_-7216969507367670579m_-4034653188979301100m_3265050832794637623m_-8010=
105586882046680m_9060476606028596242m_-8975400041455860880m_582964350132543=
5819HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-=
8977509334027439861m_-3148426612084602578m_-1305972213606089458m_5958271634=
659300202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_5=
795049304399192415m_5254634956991466343m_-2674056437811472753m_885448442749=
5934432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-4=
278546449998113862m_8639408421370773110m_8706942729204879127m_-127932263654=
8333820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_=
-643408823540767484m_5332274037928118056m_4177746047818211183m_-60879616154=
2894190m_696673799268915122m_6553687040819910946m_115938388387323268m_47616=
16352644549434m_-3513777754456038708m_4043923721510201449m_8439076215260255=
433m_8967092135526556366m_1627725659441522800m_2125241640333008915m_3998800=
05603669064m_-4267927354475654337m_7611252690734340973m_-802775348327864605=
5m_-7216969507367670579m_-4034653188979301100m_3265050832794637623m_-801010=
5586882046680m_9060476606028596242m_-8975400041455860880m_58296435013254358=
19m_8572586998478864595HOEnZb"><font color=3D"#888888"><br></font></span></=
font></span></font></span></font></span></font></span></div><span class=3D"=
m_4969674427463734723m_-8977509334027439861m_-3148426612084602578m_-1305972=
213606089458m_5958271634659300202m_2950671603987798537m_4510805869328595129=
m_7353279886003186147m_5795049304399192415m_5254634956991466343m_-267405643=
7811472753m_8854484427495934432m_4328146256894303270m_8032681368690692765m_=
-4158281573136614853m_-4278546449998113862m_8639408421370773110m_8706942729=
204879127m_-1279322636548333820m_-6066069437904457241m_-6483286325313852626=
m_-1413988085184529128m_-643408823540767484m_5332274037928118056m_417774604=
7818211183m_-608796161542894190m_696673799268915122m_6553687040819910946m_1=
15938388387323268m_4761616352644549434m_-3513777754456038708m_4043923721510=
201449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_2125=
241640333008915m_399880005603669064m_-4267927354475654337m_7611252690734340=
973m_-8027753483278646055m_-7216969507367670579HOEnZb"><font color=3D"#8888=
88"><span class=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612=
084602578m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_=
4510805869328595129m_7353279886003186147m_5795049304399192415m_525463495699=
1466343m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_80=
32681368690692765m_-4158281573136614853m_-4278546449998113862m_863940842137=
0773110m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-=
6483286325313852626m_-1413988085184529128m_-643408823540767484m_53322740379=
28118056m_4177746047818211183m_-608796161542894190m_696673799268915122m_655=
3687040819910946m_115938388387323268m_4761616352644549434m_-351377775445603=
8708m_4043923721510201449m_8439076215260255433m_8967092135526556366m_162772=
5659441522800m_2125241640333008915m_399880005603669064m_-426792735447565433=
7m_7611252690734340973m_-8027753483278646055m_-7216969507367670579m_-403465=
3188979301100HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463=
734723m_-8977509334027439861m_-3148426612084602578m_-1305972213606089458m_5=
958271634659300202m_2950671603987798537m_4510805869328595129m_7353279886003=
186147m_5795049304399192415m_5254634956991466343m_-2674056437811472753m_885=
4484427495934432m_4328146256894303270m_8032681368690692765m_-41582815731366=
14853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m_-127=
9322636548333820m_-6066069437904457241m_-6483286325313852626m_-141398808518=
4529128m_-643408823540767484m_5332274037928118056m_4177746047818211183m_-60=
8796161542894190m_696673799268915122m_6553687040819910946m_1159383883873232=
68m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_8439076=
215260255433m_8967092135526556366m_1627725659441522800m_2125241640333008915=
m_399880005603669064m_-4267927354475654337m_7611252690734340973m_-802775348=
3278646055m_-7216969507367670579m_-4034653188979301100m_3265050832794637623=
m_-8010105586882046680m_9060476606028596242m_-8975400041455860880HOEnZb"><f=
ont color=3D"#888888"><span class=3D"m_4969674427463734723m_-89775093340274=
39861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_295=
0671603987798537m_4510805869328595129m_7353279886003186147m_579504930439919=
2415m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_43281=
46256894303270m_8032681368690692765m_-4158281573136614853m_-427854644999811=
3862m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_-6066=
069437904457241m_-6483286325313852626m_-1413988085184529128m_-6434088235407=
67484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_69667=
3799268915122m_6553687040819910946m_115938388387323268m_4761616352644549434=
m_-3513777754456038708m_4043923721510201449m_8439076215260255433m_896709213=
5526556366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-=
4267927354475654337m_7611252690734340973m_-8027753483278646055m_-7216969507=
367670579m_-4034653188979301100m_3265050832794637623m_-8010105586882046680m=
_9060476606028596242m_-8975400041455860880m_5829643501325435819HOEnZb"><fon=
t color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977509334027439=
861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_29506=
71603987798537m_4510805869328595129m_7353279886003186147m_57950493043991924=
15m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_4328146=
256894303270m_8032681368690692765m_-4158281573136614853m_-42785464499981138=
62m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_-606606=
9437904457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767=
484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_6966737=
99268915122m_6553687040819910946m_115938388387323268m_4761616352644549434m_=
-3513777754456038708m_4043923721510201449m_8439076215260255433m_89670921355=
26556366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-42=
67927354475654337m_7611252690734340973m_-8027753483278646055m_-721696950736=
7670579m_-4034653188979301100m_3265050832794637623m_-8010105586882046680m_9=
060476606028596242m_-8975400041455860880m_5829643501325435819m_857258699847=
8864595HOEnZb"><font color=3D"#888888">
</font></span></font></span></font></span></font></span></font></span></div=
><span class=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612084=
602578m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_451=
0805869328595129m_7353279886003186147m_5795049304399192415m_525463495699146=
6343m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_80326=
81368690692765m_-4158281573136614853m_-4278546449998113862m_863940842137077=
3110m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-648=
3286325313852626m_-1413988085184529128m_-643408823540767484m_53322740379281=
18056m_4177746047818211183m_-608796161542894190m_696673799268915122m_655368=
7040819910946m_115938388387323268m_4761616352644549434m_-351377775445603870=
8m_4043923721510201449m_8439076215260255433m_8967092135526556366m_162772565=
9441522800m_2125241640333008915m_399880005603669064m_-4267927354475654337m_=
7611252690734340973m_-8027753483278646055m_-7216969507367670579HOEnZb"><fon=
t color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977509334027439=
861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_29506=
71603987798537m_4510805869328595129m_7353279886003186147m_57950493043991924=
15m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_4328146=
256894303270m_8032681368690692765m_-4158281573136614853m_-42785464499981138=
62m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_-606606=
9437904457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767=
484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_6966737=
99268915122m_6553687040819910946m_115938388387323268m_4761616352644549434m_=
-3513777754456038708m_4043923721510201449m_8439076215260255433m_89670921355=
26556366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-42=
67927354475654337m_7611252690734340973m_-8027753483278646055m_-721696950736=
7670579m_-4034653188979301100HOEnZb"><font color=3D"#888888"><span class=3D=
"m_4969674427463734723m_-8977509334027439861m_-3148426612084602578m_-130597=
2213606089458m_5958271634659300202m_2950671603987798537m_451080586932859512=
9m_7353279886003186147m_5795049304399192415m_5254634956991466343m_-26740564=
37811472753m_8854484427495934432m_4328146256894303270m_8032681368690692765m=
_-4158281573136614853m_-4278546449998113862m_8639408421370773110m_870694272=
9204879127m_-1279322636548333820m_-6066069437904457241m_-648328632531385262=
6m_-1413988085184529128m_-643408823540767484m_5332274037928118056m_41777460=
47818211183m_-608796161542894190m_696673799268915122m_6553687040819910946m_=
115938388387323268m_4761616352644549434m_-3513777754456038708m_404392372151=
0201449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_212=
5241640333008915m_399880005603669064m_-4267927354475654337m_761125269073434=
0973m_-8027753483278646055m_-7216969507367670579m_-4034653188979301100m_326=
5050832794637623m_-8010105586882046680m_9060476606028596242m_-8975400041455=
860880HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m=
_-8977509334027439861m_-3148426612084602578m_-1305972213606089458m_59582716=
34659300202m_2950671603987798537m_4510805869328595129m_7353279886003186147m=
_5795049304399192415m_5254634956991466343m_-2674056437811472753m_8854484427=
495934432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_=
-4278546449998113862m_8639408421370773110m_8706942729204879127m_-1279322636=
548333820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128=
m_-643408823540767484m_5332274037928118056m_4177746047818211183m_-608796161=
542894190m_696673799268915122m_6553687040819910946m_115938388387323268m_476=
1616352644549434m_-3513777754456038708m_4043923721510201449m_84390762152602=
55433m_8967092135526556366m_1627725659441522800m_2125241640333008915m_39988=
0005603669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646=
055m_-7216969507367670579m_-4034653188979301100m_3265050832794637623m_-8010=
105586882046680m_9060476606028596242m_-8975400041455860880m_582964350132543=
5819HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-=
8977509334027439861m_-3148426612084602578m_-1305972213606089458m_5958271634=
659300202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_5=
795049304399192415m_5254634956991466343m_-2674056437811472753m_885448442749=
5934432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-4=
278546449998113862m_8639408421370773110m_8706942729204879127m_-127932263654=
8333820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_=
-643408823540767484m_5332274037928118056m_4177746047818211183m_-60879616154=
2894190m_696673799268915122m_6553687040819910946m_115938388387323268m_47616=
16352644549434m_-3513777754456038708m_4043923721510201449m_8439076215260255=
433m_8967092135526556366m_1627725659441522800m_2125241640333008915m_3998800=
05603669064m_-4267927354475654337m_7611252690734340973m_-802775348327864605=
5m_-7216969507367670579m_-4034653188979301100m_3265050832794637623m_-801010=
5586882046680m_9060476606028596242m_-8975400041455860880m_58296435013254358=
19m_8572586998478864595HOEnZb"><font color=3D"#888888"><br></font></span></=
font></span></font></span></font></span></font></span></div><span class=3D"=
m_4969674427463734723m_-8977509334027439861m_-3148426612084602578m_-1305972=
213606089458m_5958271634659300202m_2950671603987798537m_4510805869328595129=
m_7353279886003186147m_5795049304399192415m_5254634956991466343m_-267405643=
7811472753m_8854484427495934432m_4328146256894303270m_8032681368690692765m_=
-4158281573136614853m_-4278546449998113862m_8639408421370773110m_8706942729=
204879127m_-1279322636548333820m_-6066069437904457241m_-6483286325313852626=
m_-1413988085184529128m_-643408823540767484m_5332274037928118056m_417774604=
7818211183m_-608796161542894190m_696673799268915122m_6553687040819910946m_1=
15938388387323268m_4761616352644549434m_-3513777754456038708m_4043923721510=
201449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_2125=
241640333008915m_399880005603669064m_-4267927354475654337m_7611252690734340=
973m_-8027753483278646055m_-7216969507367670579HOEnZb"><font color=3D"#8888=
88"><span class=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612=
084602578m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_=
4510805869328595129m_7353279886003186147m_5795049304399192415m_525463495699=
1466343m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_80=
32681368690692765m_-4158281573136614853m_-4278546449998113862m_863940842137=
0773110m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-=
6483286325313852626m_-1413988085184529128m_-643408823540767484m_53322740379=
28118056m_4177746047818211183m_-608796161542894190m_696673799268915122m_655=
3687040819910946m_115938388387323268m_4761616352644549434m_-351377775445603=
8708m_4043923721510201449m_8439076215260255433m_8967092135526556366m_162772=
5659441522800m_2125241640333008915m_399880005603669064m_-426792735447565433=
7m_7611252690734340973m_-8027753483278646055m_-7216969507367670579m_-403465=
3188979301100HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463=
734723m_-8977509334027439861m_-3148426612084602578m_-1305972213606089458m_5=
958271634659300202m_2950671603987798537m_4510805869328595129m_7353279886003=
186147m_5795049304399192415m_5254634956991466343m_-2674056437811472753m_885=
4484427495934432m_4328146256894303270m_8032681368690692765m_-41582815731366=
14853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m_-127=
9322636548333820m_-6066069437904457241m_-6483286325313852626m_-141398808518=
4529128m_-643408823540767484m_5332274037928118056m_4177746047818211183m_-60=
8796161542894190m_696673799268915122m_6553687040819910946m_1159383883873232=
68m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_8439076=
215260255433m_8967092135526556366m_1627725659441522800m_2125241640333008915=
m_399880005603669064m_-4267927354475654337m_7611252690734340973m_-802775348=
3278646055m_-7216969507367670579m_-4034653188979301100m_3265050832794637623=
m_-8010105586882046680m_9060476606028596242m_-8975400041455860880HOEnZb"><f=
ont color=3D"#888888"><span class=3D"m_4969674427463734723m_-89775093340274=
39861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_295=
0671603987798537m_4510805869328595129m_7353279886003186147m_579504930439919=
2415m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_43281=
46256894303270m_8032681368690692765m_-4158281573136614853m_-427854644999811=
3862m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_-6066=
069437904457241m_-6483286325313852626m_-1413988085184529128m_-6434088235407=
67484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_69667=
3799268915122m_6553687040819910946m_115938388387323268m_4761616352644549434=
m_-3513777754456038708m_4043923721510201449m_8439076215260255433m_896709213=
5526556366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-=
4267927354475654337m_7611252690734340973m_-8027753483278646055m_-7216969507=
367670579m_-4034653188979301100m_3265050832794637623m_-8010105586882046680m=
_9060476606028596242m_-8975400041455860880m_5829643501325435819HOEnZb"><fon=
t color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977509334027439=
861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_29506=
71603987798537m_4510805869328595129m_7353279886003186147m_57950493043991924=
15m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_4328146=
256894303270m_8032681368690692765m_-4158281573136614853m_-42785464499981138=
62m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_-606606=
9437904457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767=
484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_6966737=
99268915122m_6553687040819910946m_115938388387323268m_4761616352644549434m_=
-3513777754456038708m_4043923721510201449m_8439076215260255433m_89670921355=
26556366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-42=
67927354475654337m_7611252690734340973m_-8027753483278646055m_-721696950736=
7670579m_-4034653188979301100m_3265050832794637623m_-8010105586882046680m_9=
060476606028596242m_-8975400041455860880m_5829643501325435819m_857258699847=
8864595HOEnZb"><font color=3D"#888888">
</font></span></font></span></font></span></font></span></font></span></div=
></div></div><span class=3D"m_4969674427463734723m_-8977509334027439861m_-3=
148426612084602578m_-1305972213606089458m_5958271634659300202m_295067160398=
7798537m_4510805869328595129m_7353279886003186147m_5795049304399192415m_525=
4634956991466343m_-2674056437811472753m_8854484427495934432m_43281462568943=
03270m_8032681368690692765m_-4158281573136614853m_-4278546449998113862m_863=
9408421370773110m_8706942729204879127m_-1279322636548333820m_-6066069437904=
457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767484m_53=
32274037928118056m_4177746047818211183m_-608796161542894190m_69667379926891=
5122m_6553687040819910946m_115938388387323268m_4761616352644549434m_-351377=
7754456038708m_4043923721510201449m_8439076215260255433m_896709213552655636=
6m_1627725659441522800m_2125241640333008915m_399880005603669064m_-426792735=
4475654337m_7611252690734340973m_-8027753483278646055m_-7216969507367670579=
HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977=
509334027439861m_-3148426612084602578m_-1305972213606089458m_59582716346593=
00202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_57950=
49304399192415m_5254634956991466343m_-2674056437811472753m_8854484427495934=
432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-42785=
46449998113862m_8639408421370773110m_8706942729204879127m_-1279322636548333=
820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_-643=
408823540767484m_5332274037928118056m_4177746047818211183m_-608796161542894=
190m_696673799268915122m_6553687040819910946m_115938388387323268m_476161635=
2644549434m_-3513777754456038708m_4043923721510201449m_8439076215260255433m=
_8967092135526556366m_1627725659441522800m_2125241640333008915m_39988000560=
3669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646055m_-=
7216969507367670579m_-4034653188979301100HOEnZb"><font color=3D"#888888"><s=
pan class=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612084602=
578m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_451080=
5869328595129m_7353279886003186147m_5795049304399192415m_525463495699146634=
3m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_80326813=
68690692765m_-4158281573136614853m_-4278546449998113862m_863940842137077311=
0m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-648328=
6325313852626m_-1413988085184529128m_-643408823540767484m_53322740379281180=
56m_4177746047818211183m_-608796161542894190m_696673799268915122m_655368704=
0819910946m_115938388387323268m_4761616352644549434m_-3513777754456038708m_=
4043923721510201449m_8439076215260255433m_8967092135526556366m_162772565944=
1522800m_2125241640333008915m_399880005603669064m_-4267927354475654337m_761=
1252690734340973m_-8027753483278646055m_-7216969507367670579m_-403465318897=
9301100m_3265050832794637623m_-8010105586882046680m_9060476606028596242m_-8=
975400041455860880HOEnZb"><font color=3D"#888888"><span class=3D"m_49696744=
27463734723m_-8977509334027439861m_-3148426612084602578m_-13059722136060894=
58m_5958271634659300202m_2950671603987798537m_4510805869328595129m_73532798=
86003186147m_5795049304399192415m_5254634956991466343m_-2674056437811472753=
m_8854484427495934432m_4328146256894303270m_8032681368690692765m_-415828157=
3136614853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m=
_-1279322636548333820m_-6066069437904457241m_-6483286325313852626m_-1413988=
085184529128m_-643408823540767484m_5332274037928118056m_4177746047818211183=
m_-608796161542894190m_696673799268915122m_6553687040819910946m_11593838838=
7323268m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_84=
39076215260255433m_8967092135526556366m_1627725659441522800m_21252416403330=
08915m_399880005603669064m_-4267927354475654337m_7611252690734340973m_-8027=
753483278646055m_-7216969507367670579m_-4034653188979301100m_32650508327946=
37623m_-8010105586882046680m_9060476606028596242m_-8975400041455860880m_582=
9643501325435819HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427=
463734723m_-8977509334027439861m_-3148426612084602578m_-1305972213606089458=
m_5958271634659300202m_2950671603987798537m_4510805869328595129m_7353279886=
003186147m_5795049304399192415m_5254634956991466343m_-2674056437811472753m_=
8854484427495934432m_4328146256894303270m_8032681368690692765m_-41582815731=
36614853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m_-=
1279322636548333820m_-6066069437904457241m_-6483286325313852626m_-141398808=
5184529128m_-643408823540767484m_5332274037928118056m_4177746047818211183m_=
-608796161542894190m_696673799268915122m_6553687040819910946m_1159383883873=
23268m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_8439=
076215260255433m_8967092135526556366m_1627725659441522800m_2125241640333008=
915m_399880005603669064m_-4267927354475654337m_7611252690734340973m_-802775=
3483278646055m_-7216969507367670579m_-4034653188979301100m_3265050832794637=
623m_-8010105586882046680m_9060476606028596242m_-8975400041455860880m_58296=
43501325435819m_8572586998478864595HOEnZb"><font color=3D"#888888"><br></fo=
nt></span></font></span></font></span></font></span></font></span></div><sp=
an class=3D"m_4969674427463734723m_-8977509334027439861m_-31484266120846025=
78m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_4510805=
869328595129m_7353279886003186147m_5795049304399192415m_5254634956991466343=
m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_803268136=
8690692765m_-4158281573136614853m_-4278546449998113862m_8639408421370773110=
m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-6483286=
325313852626m_-1413988085184529128m_-643408823540767484m_533227403792811805=
6m_4177746047818211183m_-608796161542894190m_696673799268915122m_6553687040=
819910946m_115938388387323268m_4761616352644549434m_-3513777754456038708m_4=
043923721510201449m_8439076215260255433m_8967092135526556366m_1627725659441=
522800m_2125241640333008915m_399880005603669064m_-4267927354475654337m_7611=
252690734340973m_-8027753483278646055m_-7216969507367670579HOEnZb"><font co=
lor=3D"#888888"><span class=3D"m_4969674427463734723m_-8977509334027439861m=
_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_295067160=
3987798537m_4510805869328595129m_7353279886003186147m_5795049304399192415m_=
5254634956991466343m_-2674056437811472753m_8854484427495934432m_43281462568=
94303270m_8032681368690692765m_-4158281573136614853m_-4278546449998113862m_=
8639408421370773110m_8706942729204879127m_-1279322636548333820m_-6066069437=
904457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767484m=
_5332274037928118056m_4177746047818211183m_-608796161542894190m_69667379926=
8915122m_6553687040819910946m_115938388387323268m_4761616352644549434m_-351=
3777754456038708m_4043923721510201449m_8439076215260255433m_896709213552655=
6366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-426792=
7354475654337m_7611252690734340973m_-8027753483278646055m_-7216969507367670=
579m_-4034653188979301100HOEnZb"><font color=3D"#888888"><span class=3D"m_4=
969674427463734723m_-8977509334027439861m_-3148426612084602578m_-1305972213=
606089458m_5958271634659300202m_2950671603987798537m_4510805869328595129m_7=
353279886003186147m_5795049304399192415m_5254634956991466343m_-267405643781=
1472753m_8854484427495934432m_4328146256894303270m_8032681368690692765m_-41=
58281573136614853m_-4278546449998113862m_8639408421370773110m_8706942729204=
879127m_-1279322636548333820m_-6066069437904457241m_-6483286325313852626m_-=
1413988085184529128m_-643408823540767484m_5332274037928118056m_417774604781=
8211183m_-608796161542894190m_696673799268915122m_6553687040819910946m_1159=
38388387323268m_4761616352644549434m_-3513777754456038708m_4043923721510201=
449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_2125241=
640333008915m_399880005603669064m_-4267927354475654337m_7611252690734340973=
m_-8027753483278646055m_-7216969507367670579m_-4034653188979301100m_3265050=
832794637623m_-8010105586882046680m_9060476606028596242m_-89754000414558608=
80HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-89=
77509334027439861m_-3148426612084602578m_-1305972213606089458m_595827163465=
9300202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_579=
5049304399192415m_5254634956991466343m_-2674056437811472753m_88544844274959=
34432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-427=
8546449998113862m_8639408421370773110m_8706942729204879127m_-12793226365483=
33820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_-6=
43408823540767484m_5332274037928118056m_4177746047818211183m_-6087961615428=
94190m_696673799268915122m_6553687040819910946m_115938388387323268m_4761616=
352644549434m_-3513777754456038708m_4043923721510201449m_843907621526025543=
3m_8967092135526556366m_1627725659441522800m_2125241640333008915m_399880005=
603669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646055m=
_-7216969507367670579m_-4034653188979301100m_3265050832794637623m_-80101055=
86882046680m_9060476606028596242m_-8975400041455860880m_5829643501325435819=
HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977=
509334027439861m_-3148426612084602578m_-1305972213606089458m_59582716346593=
00202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_57950=
49304399192415m_5254634956991466343m_-2674056437811472753m_8854484427495934=
432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-42785=
46449998113862m_8639408421370773110m_8706942729204879127m_-1279322636548333=
820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_-643=
408823540767484m_5332274037928118056m_4177746047818211183m_-608796161542894=
190m_696673799268915122m_6553687040819910946m_115938388387323268m_476161635=
2644549434m_-3513777754456038708m_4043923721510201449m_8439076215260255433m=
_8967092135526556366m_1627725659441522800m_2125241640333008915m_39988000560=
3669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646055m_-=
7216969507367670579m_-4034653188979301100m_3265050832794637623m_-8010105586=
882046680m_9060476606028596242m_-8975400041455860880m_5829643501325435819m_=
8572586998478864595HOEnZb"><font color=3D"#888888">
</font></span></font></span></font></span></font></span></font></span></div=
></div></div><span class=3D"m_4969674427463734723m_-8977509334027439861m_-3=
148426612084602578m_-1305972213606089458m_5958271634659300202m_295067160398=
7798537m_4510805869328595129m_7353279886003186147m_5795049304399192415m_525=
4634956991466343m_-2674056437811472753m_8854484427495934432m_43281462568943=
03270m_8032681368690692765m_-4158281573136614853m_-4278546449998113862m_863=
9408421370773110m_8706942729204879127m_-1279322636548333820m_-6066069437904=
457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767484m_53=
32274037928118056m_4177746047818211183m_-608796161542894190m_69667379926891=
5122m_6553687040819910946m_115938388387323268m_4761616352644549434m_-351377=
7754456038708m_4043923721510201449m_8439076215260255433m_896709213552655636=
6m_1627725659441522800m_2125241640333008915m_399880005603669064m_-426792735=
4475654337m_7611252690734340973m_-8027753483278646055m_-7216969507367670579=
HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977=
509334027439861m_-3148426612084602578m_-1305972213606089458m_59582716346593=
00202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_57950=
49304399192415m_5254634956991466343m_-2674056437811472753m_8854484427495934=
432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-42785=
46449998113862m_8639408421370773110m_8706942729204879127m_-1279322636548333=
820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_-643=
408823540767484m_5332274037928118056m_4177746047818211183m_-608796161542894=
190m_696673799268915122m_6553687040819910946m_115938388387323268m_476161635=
2644549434m_-3513777754456038708m_4043923721510201449m_8439076215260255433m=
_8967092135526556366m_1627725659441522800m_2125241640333008915m_39988000560=
3669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646055m_-=
7216969507367670579m_-4034653188979301100HOEnZb"><font color=3D"#888888"><s=
pan class=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612084602=
578m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_451080=
5869328595129m_7353279886003186147m_5795049304399192415m_525463495699146634=
3m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_80326813=
68690692765m_-4158281573136614853m_-4278546449998113862m_863940842137077311=
0m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-648328=
6325313852626m_-1413988085184529128m_-643408823540767484m_53322740379281180=
56m_4177746047818211183m_-608796161542894190m_696673799268915122m_655368704=
0819910946m_115938388387323268m_4761616352644549434m_-3513777754456038708m_=
4043923721510201449m_8439076215260255433m_8967092135526556366m_162772565944=
1522800m_2125241640333008915m_399880005603669064m_-4267927354475654337m_761=
1252690734340973m_-8027753483278646055m_-7216969507367670579m_-403465318897=
9301100m_3265050832794637623m_-8010105586882046680m_9060476606028596242m_-8=
975400041455860880HOEnZb"><font color=3D"#888888"><span class=3D"m_49696744=
27463734723m_-8977509334027439861m_-3148426612084602578m_-13059722136060894=
58m_5958271634659300202m_2950671603987798537m_4510805869328595129m_73532798=
86003186147m_5795049304399192415m_5254634956991466343m_-2674056437811472753=
m_8854484427495934432m_4328146256894303270m_8032681368690692765m_-415828157=
3136614853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m=
_-1279322636548333820m_-6066069437904457241m_-6483286325313852626m_-1413988=
085184529128m_-643408823540767484m_5332274037928118056m_4177746047818211183=
m_-608796161542894190m_696673799268915122m_6553687040819910946m_11593838838=
7323268m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_84=
39076215260255433m_8967092135526556366m_1627725659441522800m_21252416403330=
08915m_399880005603669064m_-4267927354475654337m_7611252690734340973m_-8027=
753483278646055m_-7216969507367670579m_-4034653188979301100m_32650508327946=
37623m_-8010105586882046680m_9060476606028596242m_-8975400041455860880m_582=
9643501325435819HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427=
463734723m_-8977509334027439861m_-3148426612084602578m_-1305972213606089458=
m_5958271634659300202m_2950671603987798537m_4510805869328595129m_7353279886=
003186147m_5795049304399192415m_5254634956991466343m_-2674056437811472753m_=
8854484427495934432m_4328146256894303270m_8032681368690692765m_-41582815731=
36614853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m_-=
1279322636548333820m_-6066069437904457241m_-6483286325313852626m_-141398808=
5184529128m_-643408823540767484m_5332274037928118056m_4177746047818211183m_=
-608796161542894190m_696673799268915122m_6553687040819910946m_1159383883873=
23268m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_8439=
076215260255433m_8967092135526556366m_1627725659441522800m_2125241640333008=
915m_399880005603669064m_-4267927354475654337m_7611252690734340973m_-802775=
3483278646055m_-7216969507367670579m_-4034653188979301100m_3265050832794637=
623m_-8010105586882046680m_9060476606028596242m_-8975400041455860880m_58296=
43501325435819m_8572586998478864595HOEnZb"><font color=3D"#888888"><br></fo=
nt></span></font></span></font></span></font></span></font></span></div><sp=
an class=3D"m_4969674427463734723m_-8977509334027439861m_-31484266120846025=
78m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_4510805=
869328595129m_7353279886003186147m_5795049304399192415m_5254634956991466343=
m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_803268136=
8690692765m_-4158281573136614853m_-4278546449998113862m_8639408421370773110=
m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-6483286=
325313852626m_-1413988085184529128m_-643408823540767484m_533227403792811805=
6m_4177746047818211183m_-608796161542894190m_696673799268915122m_6553687040=
819910946m_115938388387323268m_4761616352644549434m_-3513777754456038708m_4=
043923721510201449m_8439076215260255433m_8967092135526556366m_1627725659441=
522800m_2125241640333008915m_399880005603669064m_-4267927354475654337m_7611=
252690734340973m_-8027753483278646055m_-7216969507367670579HOEnZb"><font co=
lor=3D"#888888"><span class=3D"m_4969674427463734723m_-8977509334027439861m=
_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_295067160=
3987798537m_4510805869328595129m_7353279886003186147m_5795049304399192415m_=
5254634956991466343m_-2674056437811472753m_8854484427495934432m_43281462568=
94303270m_8032681368690692765m_-4158281573136614853m_-4278546449998113862m_=
8639408421370773110m_8706942729204879127m_-1279322636548333820m_-6066069437=
904457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767484m=
_5332274037928118056m_4177746047818211183m_-608796161542894190m_69667379926=
8915122m_6553687040819910946m_115938388387323268m_4761616352644549434m_-351=
3777754456038708m_4043923721510201449m_8439076215260255433m_896709213552655=
6366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-426792=
7354475654337m_7611252690734340973m_-8027753483278646055m_-7216969507367670=
579m_-4034653188979301100HOEnZb"><font color=3D"#888888"><span class=3D"m_4=
969674427463734723m_-8977509334027439861m_-3148426612084602578m_-1305972213=
606089458m_5958271634659300202m_2950671603987798537m_4510805869328595129m_7=
353279886003186147m_5795049304399192415m_5254634956991466343m_-267405643781=
1472753m_8854484427495934432m_4328146256894303270m_8032681368690692765m_-41=
58281573136614853m_-4278546449998113862m_8639408421370773110m_8706942729204=
879127m_-1279322636548333820m_-6066069437904457241m_-6483286325313852626m_-=
1413988085184529128m_-643408823540767484m_5332274037928118056m_417774604781=
8211183m_-608796161542894190m_696673799268915122m_6553687040819910946m_1159=
38388387323268m_4761616352644549434m_-3513777754456038708m_4043923721510201=
449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_2125241=
640333008915m_399880005603669064m_-4267927354475654337m_7611252690734340973=
m_-8027753483278646055m_-7216969507367670579m_-4034653188979301100m_3265050=
832794637623m_-8010105586882046680m_9060476606028596242m_-89754000414558608=
80HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-89=
77509334027439861m_-3148426612084602578m_-1305972213606089458m_595827163465=
9300202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_579=
5049304399192415m_5254634956991466343m_-2674056437811472753m_88544844274959=
34432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-427=
8546449998113862m_8639408421370773110m_8706942729204879127m_-12793226365483=
33820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_-6=
43408823540767484m_5332274037928118056m_4177746047818211183m_-6087961615428=
94190m_696673799268915122m_6553687040819910946m_115938388387323268m_4761616=
352644549434m_-3513777754456038708m_4043923721510201449m_843907621526025543=
3m_8967092135526556366m_1627725659441522800m_2125241640333008915m_399880005=
603669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646055m=
_-7216969507367670579m_-4034653188979301100m_3265050832794637623m_-80101055=
86882046680m_9060476606028596242m_-8975400041455860880m_5829643501325435819=
HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977=
509334027439861m_-3148426612084602578m_-1305972213606089458m_59582716346593=
00202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_57950=
49304399192415m_5254634956991466343m_-2674056437811472753m_8854484427495934=
432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-42785=
46449998113862m_8639408421370773110m_8706942729204879127m_-1279322636548333=
820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_-643=
408823540767484m_5332274037928118056m_4177746047818211183m_-608796161542894=
190m_696673799268915122m_6553687040819910946m_115938388387323268m_476161635=
2644549434m_-3513777754456038708m_4043923721510201449m_8439076215260255433m=
_8967092135526556366m_1627725659441522800m_2125241640333008915m_39988000560=
3669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646055m_-=
7216969507367670579m_-4034653188979301100m_3265050832794637623m_-8010105586=
882046680m_9060476606028596242m_-8975400041455860880m_5829643501325435819m_=
8572586998478864595HOEnZb"><font color=3D"#888888">
</font></span></font></span></font></span></font></span></font></span></div=
></div></div><span class=3D"m_4969674427463734723m_-8977509334027439861m_-3=
148426612084602578m_-1305972213606089458m_5958271634659300202m_295067160398=
7798537m_4510805869328595129m_7353279886003186147m_5795049304399192415m_525=
4634956991466343m_-2674056437811472753m_8854484427495934432m_43281462568943=
03270m_8032681368690692765m_-4158281573136614853m_-4278546449998113862m_863=
9408421370773110m_8706942729204879127m_-1279322636548333820m_-6066069437904=
457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767484m_53=
32274037928118056m_4177746047818211183m_-608796161542894190m_69667379926891=
5122m_6553687040819910946m_115938388387323268m_4761616352644549434m_-351377=
7754456038708m_4043923721510201449m_8439076215260255433m_896709213552655636=
6m_1627725659441522800m_2125241640333008915m_399880005603669064m_-426792735=
4475654337m_7611252690734340973m_-8027753483278646055m_-7216969507367670579=
HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977=
509334027439861m_-3148426612084602578m_-1305972213606089458m_59582716346593=
00202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_57950=
49304399192415m_5254634956991466343m_-2674056437811472753m_8854484427495934=
432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-42785=
46449998113862m_8639408421370773110m_8706942729204879127m_-1279322636548333=
820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_-643=
408823540767484m_5332274037928118056m_4177746047818211183m_-608796161542894=
190m_696673799268915122m_6553687040819910946m_115938388387323268m_476161635=
2644549434m_-3513777754456038708m_4043923721510201449m_8439076215260255433m=
_8967092135526556366m_1627725659441522800m_2125241640333008915m_39988000560=
3669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646055m_-=
7216969507367670579m_-4034653188979301100HOEnZb"><font color=3D"#888888"><s=
pan class=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612084602=
578m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_451080=
5869328595129m_7353279886003186147m_5795049304399192415m_525463495699146634=
3m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_80326813=
68690692765m_-4158281573136614853m_-4278546449998113862m_863940842137077311=
0m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-648328=
6325313852626m_-1413988085184529128m_-643408823540767484m_53322740379281180=
56m_4177746047818211183m_-608796161542894190m_696673799268915122m_655368704=
0819910946m_115938388387323268m_4761616352644549434m_-3513777754456038708m_=
4043923721510201449m_8439076215260255433m_8967092135526556366m_162772565944=
1522800m_2125241640333008915m_399880005603669064m_-4267927354475654337m_761=
1252690734340973m_-8027753483278646055m_-7216969507367670579m_-403465318897=
9301100m_3265050832794637623m_-8010105586882046680m_9060476606028596242m_-8=
975400041455860880HOEnZb"><font color=3D"#888888"><span class=3D"m_49696744=
27463734723m_-8977509334027439861m_-3148426612084602578m_-13059722136060894=
58m_5958271634659300202m_2950671603987798537m_4510805869328595129m_73532798=
86003186147m_5795049304399192415m_5254634956991466343m_-2674056437811472753=
m_8854484427495934432m_4328146256894303270m_8032681368690692765m_-415828157=
3136614853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m=
_-1279322636548333820m_-6066069437904457241m_-6483286325313852626m_-1413988=
085184529128m_-643408823540767484m_5332274037928118056m_4177746047818211183=
m_-608796161542894190m_696673799268915122m_6553687040819910946m_11593838838=
7323268m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_84=
39076215260255433m_8967092135526556366m_1627725659441522800m_21252416403330=
08915m_399880005603669064m_-4267927354475654337m_7611252690734340973m_-8027=
753483278646055m_-7216969507367670579m_-4034653188979301100m_32650508327946=
37623m_-8010105586882046680m_9060476606028596242m_-8975400041455860880m_582=
9643501325435819HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427=
463734723m_-8977509334027439861m_-3148426612084602578m_-1305972213606089458=
m_5958271634659300202m_2950671603987798537m_4510805869328595129m_7353279886=
003186147m_5795049304399192415m_5254634956991466343m_-2674056437811472753m_=
8854484427495934432m_4328146256894303270m_8032681368690692765m_-41582815731=
36614853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m_-=
1279322636548333820m_-6066069437904457241m_-6483286325313852626m_-141398808=
5184529128m_-643408823540767484m_5332274037928118056m_4177746047818211183m_=
-608796161542894190m_696673799268915122m_6553687040819910946m_1159383883873=
23268m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_8439=
076215260255433m_8967092135526556366m_1627725659441522800m_2125241640333008=
915m_399880005603669064m_-4267927354475654337m_7611252690734340973m_-802775=
3483278646055m_-7216969507367670579m_-4034653188979301100m_3265050832794637=
623m_-8010105586882046680m_9060476606028596242m_-8975400041455860880m_58296=
43501325435819m_8572586998478864595HOEnZb"><font color=3D"#888888"><br></fo=
nt></span></font></span></font></span></font></span></font></span></div><sp=
an class=3D"m_4969674427463734723m_-8977509334027439861m_-31484266120846025=
78m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_4510805=
869328595129m_7353279886003186147m_5795049304399192415m_5254634956991466343=
m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_803268136=
8690692765m_-4158281573136614853m_-4278546449998113862m_8639408421370773110=
m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-6483286=
325313852626m_-1413988085184529128m_-643408823540767484m_533227403792811805=
6m_4177746047818211183m_-608796161542894190m_696673799268915122m_6553687040=
819910946m_115938388387323268m_4761616352644549434m_-3513777754456038708m_4=
043923721510201449m_8439076215260255433m_8967092135526556366m_1627725659441=
522800m_2125241640333008915m_399880005603669064m_-4267927354475654337m_7611=
252690734340973m_-8027753483278646055m_-7216969507367670579HOEnZb"><font co=
lor=3D"#888888"><span class=3D"m_4969674427463734723m_-8977509334027439861m=
_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_295067160=
3987798537m_4510805869328595129m_7353279886003186147m_5795049304399192415m_=
5254634956991466343m_-2674056437811472753m_8854484427495934432m_43281462568=
94303270m_8032681368690692765m_-4158281573136614853m_-4278546449998113862m_=
8639408421370773110m_8706942729204879127m_-1279322636548333820m_-6066069437=
904457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767484m=
_5332274037928118056m_4177746047818211183m_-608796161542894190m_69667379926=
8915122m_6553687040819910946m_115938388387323268m_4761616352644549434m_-351=
3777754456038708m_4043923721510201449m_8439076215260255433m_896709213552655=
6366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-426792=
7354475654337m_7611252690734340973m_-8027753483278646055m_-7216969507367670=
579m_-4034653188979301100HOEnZb"><font color=3D"#888888"><span class=3D"m_4=
969674427463734723m_-8977509334027439861m_-3148426612084602578m_-1305972213=
606089458m_5958271634659300202m_2950671603987798537m_4510805869328595129m_7=
353279886003186147m_5795049304399192415m_5254634956991466343m_-267405643781=
1472753m_8854484427495934432m_4328146256894303270m_8032681368690692765m_-41=
58281573136614853m_-4278546449998113862m_8639408421370773110m_8706942729204=
879127m_-1279322636548333820m_-6066069437904457241m_-6483286325313852626m_-=
1413988085184529128m_-643408823540767484m_5332274037928118056m_417774604781=
8211183m_-608796161542894190m_696673799268915122m_6553687040819910946m_1159=
38388387323268m_4761616352644549434m_-3513777754456038708m_4043923721510201=
449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_2125241=
640333008915m_399880005603669064m_-4267927354475654337m_7611252690734340973=
m_-8027753483278646055m_-7216969507367670579m_-4034653188979301100m_3265050=
832794637623m_-8010105586882046680m_9060476606028596242m_-89754000414558608=
80HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-89=
77509334027439861m_-3148426612084602578m_-1305972213606089458m_595827163465=
9300202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_579=
5049304399192415m_5254634956991466343m_-2674056437811472753m_88544844274959=
34432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-427=
8546449998113862m_8639408421370773110m_8706942729204879127m_-12793226365483=
33820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_-6=
43408823540767484m_5332274037928118056m_4177746047818211183m_-6087961615428=
94190m_696673799268915122m_6553687040819910946m_115938388387323268m_4761616=
352644549434m_-3513777754456038708m_4043923721510201449m_843907621526025543=
3m_8967092135526556366m_1627725659441522800m_2125241640333008915m_399880005=
603669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646055m=
_-7216969507367670579m_-4034653188979301100m_3265050832794637623m_-80101055=
86882046680m_9060476606028596242m_-8975400041455860880m_5829643501325435819=
HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977=
509334027439861m_-3148426612084602578m_-1305972213606089458m_59582716346593=
00202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_57950=
49304399192415m_5254634956991466343m_-2674056437811472753m_8854484427495934=
432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-42785=
46449998113862m_8639408421370773110m_8706942729204879127m_-1279322636548333=
820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_-643=
408823540767484m_5332274037928118056m_4177746047818211183m_-608796161542894=
190m_696673799268915122m_6553687040819910946m_115938388387323268m_476161635=
2644549434m_-3513777754456038708m_4043923721510201449m_8439076215260255433m=
_8967092135526556366m_1627725659441522800m_2125241640333008915m_39988000560=
3669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646055m_-=
7216969507367670579m_-4034653188979301100m_3265050832794637623m_-8010105586=
882046680m_9060476606028596242m_-8975400041455860880m_5829643501325435819m_=
8572586998478864595HOEnZb"><font color=3D"#888888">
</font></span></font></span></font></span></font></span></font></span></div=
><span class=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612084=
602578m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_451=
0805869328595129m_7353279886003186147m_5795049304399192415m_525463495699146=
6343m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_80326=
81368690692765m_-4158281573136614853m_-4278546449998113862m_863940842137077=
3110m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-648=
3286325313852626m_-1413988085184529128m_-643408823540767484m_53322740379281=
18056m_4177746047818211183m_-608796161542894190m_696673799268915122m_655368=
7040819910946m_115938388387323268m_4761616352644549434m_-351377775445603870=
8m_4043923721510201449m_8439076215260255433m_8967092135526556366m_162772565=
9441522800m_2125241640333008915m_399880005603669064m_-4267927354475654337m_=
7611252690734340973m_-8027753483278646055m_-7216969507367670579HOEnZb"><fon=
t color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977509334027439=
861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_29506=
71603987798537m_4510805869328595129m_7353279886003186147m_57950493043991924=
15m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_4328146=
256894303270m_8032681368690692765m_-4158281573136614853m_-42785464499981138=
62m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_-606606=
9437904457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767=
484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_6966737=
99268915122m_6553687040819910946m_115938388387323268m_4761616352644549434m_=
-3513777754456038708m_4043923721510201449m_8439076215260255433m_89670921355=
26556366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-42=
67927354475654337m_7611252690734340973m_-8027753483278646055m_-721696950736=
7670579m_-4034653188979301100HOEnZb"><font color=3D"#888888"><span class=3D=
"m_4969674427463734723m_-8977509334027439861m_-3148426612084602578m_-130597=
2213606089458m_5958271634659300202m_2950671603987798537m_451080586932859512=
9m_7353279886003186147m_5795049304399192415m_5254634956991466343m_-26740564=
37811472753m_8854484427495934432m_4328146256894303270m_8032681368690692765m=
_-4158281573136614853m_-4278546449998113862m_8639408421370773110m_870694272=
9204879127m_-1279322636548333820m_-6066069437904457241m_-648328632531385262=
6m_-1413988085184529128m_-643408823540767484m_5332274037928118056m_41777460=
47818211183m_-608796161542894190m_696673799268915122m_6553687040819910946m_=
115938388387323268m_4761616352644549434m_-3513777754456038708m_404392372151=
0201449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_212=
5241640333008915m_399880005603669064m_-4267927354475654337m_761125269073434=
0973m_-8027753483278646055m_-7216969507367670579m_-4034653188979301100m_326=
5050832794637623m_-8010105586882046680m_9060476606028596242m_-8975400041455=
860880HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m=
_-8977509334027439861m_-3148426612084602578m_-1305972213606089458m_59582716=
34659300202m_2950671603987798537m_4510805869328595129m_7353279886003186147m=
_5795049304399192415m_5254634956991466343m_-2674056437811472753m_8854484427=
495934432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_=
-4278546449998113862m_8639408421370773110m_8706942729204879127m_-1279322636=
548333820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128=
m_-643408823540767484m_5332274037928118056m_4177746047818211183m_-608796161=
542894190m_696673799268915122m_6553687040819910946m_115938388387323268m_476=
1616352644549434m_-3513777754456038708m_4043923721510201449m_84390762152602=
55433m_8967092135526556366m_1627725659441522800m_2125241640333008915m_39988=
0005603669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646=
055m_-7216969507367670579m_-4034653188979301100m_3265050832794637623m_-8010=
105586882046680m_9060476606028596242m_-8975400041455860880m_582964350132543=
5819HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-=
8977509334027439861m_-3148426612084602578m_-1305972213606089458m_5958271634=
659300202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_5=
795049304399192415m_5254634956991466343m_-2674056437811472753m_885448442749=
5934432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-4=
278546449998113862m_8639408421370773110m_8706942729204879127m_-127932263654=
8333820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_=
-643408823540767484m_5332274037928118056m_4177746047818211183m_-60879616154=
2894190m_696673799268915122m_6553687040819910946m_115938388387323268m_47616=
16352644549434m_-3513777754456038708m_4043923721510201449m_8439076215260255=
433m_8967092135526556366m_1627725659441522800m_2125241640333008915m_3998800=
05603669064m_-4267927354475654337m_7611252690734340973m_-802775348327864605=
5m_-7216969507367670579m_-4034653188979301100m_3265050832794637623m_-801010=
5586882046680m_9060476606028596242m_-8975400041455860880m_58296435013254358=
19m_8572586998478864595HOEnZb"><font color=3D"#888888"><br></font></span></=
font></span></font></span></font></span></font></span></div><span class=3D"=
m_4969674427463734723m_-8977509334027439861m_-3148426612084602578m_-1305972=
213606089458m_5958271634659300202m_2950671603987798537m_4510805869328595129=
m_7353279886003186147m_5795049304399192415m_5254634956991466343m_-267405643=
7811472753m_8854484427495934432m_4328146256894303270m_8032681368690692765m_=
-4158281573136614853m_-4278546449998113862m_8639408421370773110m_8706942729=
204879127m_-1279322636548333820m_-6066069437904457241m_-6483286325313852626=
m_-1413988085184529128m_-643408823540767484m_5332274037928118056m_417774604=
7818211183m_-608796161542894190m_696673799268915122m_6553687040819910946m_1=
15938388387323268m_4761616352644549434m_-3513777754456038708m_4043923721510=
201449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_2125=
241640333008915m_399880005603669064m_-4267927354475654337m_7611252690734340=
973m_-8027753483278646055m_-7216969507367670579HOEnZb"><font color=3D"#8888=
88"><span class=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612=
084602578m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_=
4510805869328595129m_7353279886003186147m_5795049304399192415m_525463495699=
1466343m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_80=
32681368690692765m_-4158281573136614853m_-4278546449998113862m_863940842137=
0773110m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-=
6483286325313852626m_-1413988085184529128m_-643408823540767484m_53322740379=
28118056m_4177746047818211183m_-608796161542894190m_696673799268915122m_655=
3687040819910946m_115938388387323268m_4761616352644549434m_-351377775445603=
8708m_4043923721510201449m_8439076215260255433m_8967092135526556366m_162772=
5659441522800m_2125241640333008915m_399880005603669064m_-426792735447565433=
7m_7611252690734340973m_-8027753483278646055m_-7216969507367670579m_-403465=
3188979301100HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463=
734723m_-8977509334027439861m_-3148426612084602578m_-1305972213606089458m_5=
958271634659300202m_2950671603987798537m_4510805869328595129m_7353279886003=
186147m_5795049304399192415m_5254634956991466343m_-2674056437811472753m_885=
4484427495934432m_4328146256894303270m_8032681368690692765m_-41582815731366=
14853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m_-127=
9322636548333820m_-6066069437904457241m_-6483286325313852626m_-141398808518=
4529128m_-643408823540767484m_5332274037928118056m_4177746047818211183m_-60=
8796161542894190m_696673799268915122m_6553687040819910946m_1159383883873232=
68m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_8439076=
215260255433m_8967092135526556366m_1627725659441522800m_2125241640333008915=
m_399880005603669064m_-4267927354475654337m_7611252690734340973m_-802775348=
3278646055m_-7216969507367670579m_-4034653188979301100m_3265050832794637623=
m_-8010105586882046680m_9060476606028596242m_-8975400041455860880HOEnZb"><f=
ont color=3D"#888888"><span class=3D"m_4969674427463734723m_-89775093340274=
39861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_295=
0671603987798537m_4510805869328595129m_7353279886003186147m_579504930439919=
2415m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_43281=
46256894303270m_8032681368690692765m_-4158281573136614853m_-427854644999811=
3862m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_-6066=
069437904457241m_-6483286325313852626m_-1413988085184529128m_-6434088235407=
67484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_69667=
3799268915122m_6553687040819910946m_115938388387323268m_4761616352644549434=
m_-3513777754456038708m_4043923721510201449m_8439076215260255433m_896709213=
5526556366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-=
4267927354475654337m_7611252690734340973m_-8027753483278646055m_-7216969507=
367670579m_-4034653188979301100m_3265050832794637623m_-8010105586882046680m=
_9060476606028596242m_-8975400041455860880m_5829643501325435819HOEnZb"><fon=
t color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977509334027439=
861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_29506=
71603987798537m_4510805869328595129m_7353279886003186147m_57950493043991924=
15m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_4328146=
256894303270m_8032681368690692765m_-4158281573136614853m_-42785464499981138=
62m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_-606606=
9437904457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767=
484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_6966737=
99268915122m_6553687040819910946m_115938388387323268m_4761616352644549434m_=
-3513777754456038708m_4043923721510201449m_8439076215260255433m_89670921355=
26556366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-42=
67927354475654337m_7611252690734340973m_-8027753483278646055m_-721696950736=
7670579m_-4034653188979301100m_3265050832794637623m_-8010105586882046680m_9=
060476606028596242m_-8975400041455860880m_5829643501325435819m_857258699847=
8864595HOEnZb"><font color=3D"#888888">
</font></span></font></span></font></span></font></span></font></span></div=
><span class=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612084=
602578m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_451=
0805869328595129m_7353279886003186147m_5795049304399192415m_525463495699146=
6343m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_80326=
81368690692765m_-4158281573136614853m_-4278546449998113862m_863940842137077=
3110m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-648=
3286325313852626m_-1413988085184529128m_-643408823540767484m_53322740379281=
18056m_4177746047818211183m_-608796161542894190m_696673799268915122m_655368=
7040819910946m_115938388387323268m_4761616352644549434m_-351377775445603870=
8m_4043923721510201449m_8439076215260255433m_8967092135526556366m_162772565=
9441522800m_2125241640333008915m_399880005603669064m_-4267927354475654337m_=
7611252690734340973m_-8027753483278646055m_-7216969507367670579HOEnZb"><fon=
t color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977509334027439=
861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_29506=
71603987798537m_4510805869328595129m_7353279886003186147m_57950493043991924=
15m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_4328146=
256894303270m_8032681368690692765m_-4158281573136614853m_-42785464499981138=
62m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_-606606=
9437904457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767=
484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_6966737=
99268915122m_6553687040819910946m_115938388387323268m_4761616352644549434m_=
-3513777754456038708m_4043923721510201449m_8439076215260255433m_89670921355=
26556366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-42=
67927354475654337m_7611252690734340973m_-8027753483278646055m_-721696950736=
7670579m_-4034653188979301100HOEnZb"><font color=3D"#888888"><span class=3D=
"m_4969674427463734723m_-8977509334027439861m_-3148426612084602578m_-130597=
2213606089458m_5958271634659300202m_2950671603987798537m_451080586932859512=
9m_7353279886003186147m_5795049304399192415m_5254634956991466343m_-26740564=
37811472753m_8854484427495934432m_4328146256894303270m_8032681368690692765m=
_-4158281573136614853m_-4278546449998113862m_8639408421370773110m_870694272=
9204879127m_-1279322636548333820m_-6066069437904457241m_-648328632531385262=
6m_-1413988085184529128m_-643408823540767484m_5332274037928118056m_41777460=
47818211183m_-608796161542894190m_696673799268915122m_6553687040819910946m_=
115938388387323268m_4761616352644549434m_-3513777754456038708m_404392372151=
0201449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_212=
5241640333008915m_399880005603669064m_-4267927354475654337m_761125269073434=
0973m_-8027753483278646055m_-7216969507367670579m_-4034653188979301100m_326=
5050832794637623m_-8010105586882046680m_9060476606028596242m_-8975400041455=
860880HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m=
_-8977509334027439861m_-3148426612084602578m_-1305972213606089458m_59582716=
34659300202m_2950671603987798537m_4510805869328595129m_7353279886003186147m=
_5795049304399192415m_5254634956991466343m_-2674056437811472753m_8854484427=
495934432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_=
-4278546449998113862m_8639408421370773110m_8706942729204879127m_-1279322636=
548333820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128=
m_-643408823540767484m_5332274037928118056m_4177746047818211183m_-608796161=
542894190m_696673799268915122m_6553687040819910946m_115938388387323268m_476=
1616352644549434m_-3513777754456038708m_4043923721510201449m_84390762152602=
55433m_8967092135526556366m_1627725659441522800m_2125241640333008915m_39988=
0005603669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646=
055m_-7216969507367670579m_-4034653188979301100m_3265050832794637623m_-8010=
105586882046680m_9060476606028596242m_-8975400041455860880m_582964350132543=
5819HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-=
8977509334027439861m_-3148426612084602578m_-1305972213606089458m_5958271634=
659300202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_5=
795049304399192415m_5254634956991466343m_-2674056437811472753m_885448442749=
5934432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-4=
278546449998113862m_8639408421370773110m_8706942729204879127m_-127932263654=
8333820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_=
-643408823540767484m_5332274037928118056m_4177746047818211183m_-60879616154=
2894190m_696673799268915122m_6553687040819910946m_115938388387323268m_47616=
16352644549434m_-3513777754456038708m_4043923721510201449m_8439076215260255=
433m_8967092135526556366m_1627725659441522800m_2125241640333008915m_3998800=
05603669064m_-4267927354475654337m_7611252690734340973m_-802775348327864605=
5m_-7216969507367670579m_-4034653188979301100m_3265050832794637623m_-801010=
5586882046680m_9060476606028596242m_-8975400041455860880m_58296435013254358=
19m_8572586998478864595HOEnZb"><font color=3D"#888888"><br></font></span></=
font></span></font></span></font></span></font></span></div><span class=3D"=
m_4969674427463734723m_-8977509334027439861m_-3148426612084602578m_-1305972=
213606089458m_5958271634659300202m_2950671603987798537m_4510805869328595129=
m_7353279886003186147m_5795049304399192415m_5254634956991466343m_-267405643=
7811472753m_8854484427495934432m_4328146256894303270m_8032681368690692765m_=
-4158281573136614853m_-4278546449998113862m_8639408421370773110m_8706942729=
204879127m_-1279322636548333820m_-6066069437904457241m_-6483286325313852626=
m_-1413988085184529128m_-643408823540767484m_5332274037928118056m_417774604=
7818211183m_-608796161542894190m_696673799268915122m_6553687040819910946m_1=
15938388387323268m_4761616352644549434m_-3513777754456038708m_4043923721510=
201449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_2125=
241640333008915m_399880005603669064m_-4267927354475654337m_7611252690734340=
973m_-8027753483278646055m_-7216969507367670579HOEnZb"><font color=3D"#8888=
88"><span class=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612=
084602578m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_=
4510805869328595129m_7353279886003186147m_5795049304399192415m_525463495699=
1466343m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_80=
32681368690692765m_-4158281573136614853m_-4278546449998113862m_863940842137=
0773110m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-=
6483286325313852626m_-1413988085184529128m_-643408823540767484m_53322740379=
28118056m_4177746047818211183m_-608796161542894190m_696673799268915122m_655=
3687040819910946m_115938388387323268m_4761616352644549434m_-351377775445603=
8708m_4043923721510201449m_8439076215260255433m_8967092135526556366m_162772=
5659441522800m_2125241640333008915m_399880005603669064m_-426792735447565433=
7m_7611252690734340973m_-8027753483278646055m_-7216969507367670579m_-403465=
3188979301100HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463=
734723m_-8977509334027439861m_-3148426612084602578m_-1305972213606089458m_5=
958271634659300202m_2950671603987798537m_4510805869328595129m_7353279886003=
186147m_5795049304399192415m_5254634956991466343m_-2674056437811472753m_885=
4484427495934432m_4328146256894303270m_8032681368690692765m_-41582815731366=
14853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m_-127=
9322636548333820m_-6066069437904457241m_-6483286325313852626m_-141398808518=
4529128m_-643408823540767484m_5332274037928118056m_4177746047818211183m_-60=
8796161542894190m_696673799268915122m_6553687040819910946m_1159383883873232=
68m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_8439076=
215260255433m_8967092135526556366m_1627725659441522800m_2125241640333008915=
m_399880005603669064m_-4267927354475654337m_7611252690734340973m_-802775348=
3278646055m_-7216969507367670579m_-4034653188979301100m_3265050832794637623=
m_-8010105586882046680m_9060476606028596242m_-8975400041455860880HOEnZb"><f=
ont color=3D"#888888"><span class=3D"m_4969674427463734723m_-89775093340274=
39861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_295=
0671603987798537m_4510805869328595129m_7353279886003186147m_579504930439919=
2415m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_43281=
46256894303270m_8032681368690692765m_-4158281573136614853m_-427854644999811=
3862m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_-6066=
069437904457241m_-6483286325313852626m_-1413988085184529128m_-6434088235407=
67484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_69667=
3799268915122m_6553687040819910946m_115938388387323268m_4761616352644549434=
m_-3513777754456038708m_4043923721510201449m_8439076215260255433m_896709213=
5526556366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-=
4267927354475654337m_7611252690734340973m_-8027753483278646055m_-7216969507=
367670579m_-4034653188979301100m_3265050832794637623m_-8010105586882046680m=
_9060476606028596242m_-8975400041455860880m_5829643501325435819HOEnZb"><fon=
t color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977509334027439=
861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_29506=
71603987798537m_4510805869328595129m_7353279886003186147m_57950493043991924=
15m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_4328146=
256894303270m_8032681368690692765m_-4158281573136614853m_-42785464499981138=
62m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_-606606=
9437904457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767=
484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_6966737=
99268915122m_6553687040819910946m_115938388387323268m_4761616352644549434m_=
-3513777754456038708m_4043923721510201449m_8439076215260255433m_89670921355=
26556366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-42=
67927354475654337m_7611252690734340973m_-8027753483278646055m_-721696950736=
7670579m_-4034653188979301100m_3265050832794637623m_-8010105586882046680m_9=
060476606028596242m_-8975400041455860880m_5829643501325435819m_857258699847=
8864595HOEnZb"><font color=3D"#888888">
</font></span></font></span></font></span></font></span></font></span></div=
><span class=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612084=
602578m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_451=
0805869328595129m_7353279886003186147m_5795049304399192415m_525463495699146=
6343m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_80326=
81368690692765m_-4158281573136614853m_-4278546449998113862m_863940842137077=
3110m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-648=
3286325313852626m_-1413988085184529128m_-643408823540767484m_53322740379281=
18056m_4177746047818211183m_-608796161542894190m_696673799268915122m_655368=
7040819910946m_115938388387323268m_4761616352644549434m_-351377775445603870=
8m_4043923721510201449m_8439076215260255433m_8967092135526556366m_162772565=
9441522800m_2125241640333008915m_399880005603669064m_-4267927354475654337m_=
7611252690734340973m_-8027753483278646055m_-7216969507367670579HOEnZb"><fon=
t color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977509334027439=
861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_29506=
71603987798537m_4510805869328595129m_7353279886003186147m_57950493043991924=
15m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_4328146=
256894303270m_8032681368690692765m_-4158281573136614853m_-42785464499981138=
62m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_-606606=
9437904457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767=
484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_6966737=
99268915122m_6553687040819910946m_115938388387323268m_4761616352644549434m_=
-3513777754456038708m_4043923721510201449m_8439076215260255433m_89670921355=
26556366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-42=
67927354475654337m_7611252690734340973m_-8027753483278646055m_-721696950736=
7670579m_-4034653188979301100HOEnZb"><font color=3D"#888888"><span class=3D=
"m_4969674427463734723m_-8977509334027439861m_-3148426612084602578m_-130597=
2213606089458m_5958271634659300202m_2950671603987798537m_451080586932859512=
9m_7353279886003186147m_5795049304399192415m_5254634956991466343m_-26740564=
37811472753m_8854484427495934432m_4328146256894303270m_8032681368690692765m=
_-4158281573136614853m_-4278546449998113862m_8639408421370773110m_870694272=
9204879127m_-1279322636548333820m_-6066069437904457241m_-648328632531385262=
6m_-1413988085184529128m_-643408823540767484m_5332274037928118056m_41777460=
47818211183m_-608796161542894190m_696673799268915122m_6553687040819910946m_=
115938388387323268m_4761616352644549434m_-3513777754456038708m_404392372151=
0201449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_212=
5241640333008915m_399880005603669064m_-4267927354475654337m_761125269073434=
0973m_-8027753483278646055m_-7216969507367670579m_-4034653188979301100m_326=
5050832794637623m_-8010105586882046680m_9060476606028596242m_-8975400041455=
860880HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m=
_-8977509334027439861m_-3148426612084602578m_-1305972213606089458m_59582716=
34659300202m_2950671603987798537m_4510805869328595129m_7353279886003186147m=
_5795049304399192415m_5254634956991466343m_-2674056437811472753m_8854484427=
495934432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_=
-4278546449998113862m_8639408421370773110m_8706942729204879127m_-1279322636=
548333820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128=
m_-643408823540767484m_5332274037928118056m_4177746047818211183m_-608796161=
542894190m_696673799268915122m_6553687040819910946m_115938388387323268m_476=
1616352644549434m_-3513777754456038708m_4043923721510201449m_84390762152602=
55433m_8967092135526556366m_1627725659441522800m_2125241640333008915m_39988=
0005603669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646=
055m_-7216969507367670579m_-4034653188979301100m_3265050832794637623m_-8010=
105586882046680m_9060476606028596242m_-8975400041455860880m_582964350132543=
5819HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-=
8977509334027439861m_-3148426612084602578m_-1305972213606089458m_5958271634=
659300202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_5=
795049304399192415m_5254634956991466343m_-2674056437811472753m_885448442749=
5934432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-4=
278546449998113862m_8639408421370773110m_8706942729204879127m_-127932263654=
8333820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_=
-643408823540767484m_5332274037928118056m_4177746047818211183m_-60879616154=
2894190m_696673799268915122m_6553687040819910946m_115938388387323268m_47616=
16352644549434m_-3513777754456038708m_4043923721510201449m_8439076215260255=
433m_8967092135526556366m_1627725659441522800m_2125241640333008915m_3998800=
05603669064m_-4267927354475654337m_7611252690734340973m_-802775348327864605=
5m_-7216969507367670579m_-4034653188979301100m_3265050832794637623m_-801010=
5586882046680m_9060476606028596242m_-8975400041455860880m_58296435013254358=
19m_8572586998478864595HOEnZb"><font color=3D"#888888"><br></font></span></=
font></span></font></span></font></span></font></span></div><span class=3D"=
m_4969674427463734723m_-8977509334027439861m_-3148426612084602578m_-1305972=
213606089458m_5958271634659300202m_2950671603987798537m_4510805869328595129=
m_7353279886003186147m_5795049304399192415m_5254634956991466343m_-267405643=
7811472753m_8854484427495934432m_4328146256894303270m_8032681368690692765m_=
-4158281573136614853m_-4278546449998113862m_8639408421370773110m_8706942729=
204879127m_-1279322636548333820m_-6066069437904457241m_-6483286325313852626=
m_-1413988085184529128m_-643408823540767484m_5332274037928118056m_417774604=
7818211183m_-608796161542894190m_696673799268915122m_6553687040819910946m_1=
15938388387323268m_4761616352644549434m_-3513777754456038708m_4043923721510=
201449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_2125=
241640333008915m_399880005603669064m_-4267927354475654337m_7611252690734340=
973m_-8027753483278646055m_-7216969507367670579HOEnZb"><font color=3D"#8888=
88"><span class=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612=
084602578m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_=
4510805869328595129m_7353279886003186147m_5795049304399192415m_525463495699=
1466343m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_80=
32681368690692765m_-4158281573136614853m_-4278546449998113862m_863940842137=
0773110m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-=
6483286325313852626m_-1413988085184529128m_-643408823540767484m_53322740379=
28118056m_4177746047818211183m_-608796161542894190m_696673799268915122m_655=
3687040819910946m_115938388387323268m_4761616352644549434m_-351377775445603=
8708m_4043923721510201449m_8439076215260255433m_8967092135526556366m_162772=
5659441522800m_2125241640333008915m_399880005603669064m_-426792735447565433=
7m_7611252690734340973m_-8027753483278646055m_-7216969507367670579m_-403465=
3188979301100HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463=
734723m_-8977509334027439861m_-3148426612084602578m_-1305972213606089458m_5=
958271634659300202m_2950671603987798537m_4510805869328595129m_7353279886003=
186147m_5795049304399192415m_5254634956991466343m_-2674056437811472753m_885=
4484427495934432m_4328146256894303270m_8032681368690692765m_-41582815731366=
14853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m_-127=
9322636548333820m_-6066069437904457241m_-6483286325313852626m_-141398808518=
4529128m_-643408823540767484m_5332274037928118056m_4177746047818211183m_-60=
8796161542894190m_696673799268915122m_6553687040819910946m_1159383883873232=
68m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_8439076=
215260255433m_8967092135526556366m_1627725659441522800m_2125241640333008915=
m_399880005603669064m_-4267927354475654337m_7611252690734340973m_-802775348=
3278646055m_-7216969507367670579m_-4034653188979301100m_3265050832794637623=
m_-8010105586882046680m_9060476606028596242m_-8975400041455860880HOEnZb"><f=
ont color=3D"#888888"><span class=3D"m_4969674427463734723m_-89775093340274=
39861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_295=
0671603987798537m_4510805869328595129m_7353279886003186147m_579504930439919=
2415m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_43281=
46256894303270m_8032681368690692765m_-4158281573136614853m_-427854644999811=
3862m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_-6066=
069437904457241m_-6483286325313852626m_-1413988085184529128m_-6434088235407=
67484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_69667=
3799268915122m_6553687040819910946m_115938388387323268m_4761616352644549434=
m_-3513777754456038708m_4043923721510201449m_8439076215260255433m_896709213=
5526556366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-=
4267927354475654337m_7611252690734340973m_-8027753483278646055m_-7216969507=
367670579m_-4034653188979301100m_3265050832794637623m_-8010105586882046680m=
_9060476606028596242m_-8975400041455860880m_5829643501325435819HOEnZb"><fon=
t color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977509334027439=
861m_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_29506=
71603987798537m_4510805869328595129m_7353279886003186147m_57950493043991924=
15m_5254634956991466343m_-2674056437811472753m_8854484427495934432m_4328146=
256894303270m_8032681368690692765m_-4158281573136614853m_-42785464499981138=
62m_8639408421370773110m_8706942729204879127m_-1279322636548333820m_-606606=
9437904457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767=
484m_5332274037928118056m_4177746047818211183m_-608796161542894190m_6966737=
99268915122m_6553687040819910946m_115938388387323268m_4761616352644549434m_=
-3513777754456038708m_4043923721510201449m_8439076215260255433m_89670921355=
26556366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-42=
67927354475654337m_7611252690734340973m_-8027753483278646055m_-721696950736=
7670579m_-4034653188979301100m_3265050832794637623m_-8010105586882046680m_9=
060476606028596242m_-8975400041455860880m_5829643501325435819m_857258699847=
8864595HOEnZb"><font color=3D"#888888">
</font></span></font></span></font></span></font></span></font></span></div=
></div></div><span class=3D"m_4969674427463734723m_-8977509334027439861m_-3=
148426612084602578m_-1305972213606089458m_5958271634659300202m_295067160398=
7798537m_4510805869328595129m_7353279886003186147m_5795049304399192415m_525=
4634956991466343m_-2674056437811472753m_8854484427495934432m_43281462568943=
03270m_8032681368690692765m_-4158281573136614853m_-4278546449998113862m_863=
9408421370773110m_8706942729204879127m_-1279322636548333820m_-6066069437904=
457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767484m_53=
32274037928118056m_4177746047818211183m_-608796161542894190m_69667379926891=
5122m_6553687040819910946m_115938388387323268m_4761616352644549434m_-351377=
7754456038708m_4043923721510201449m_8439076215260255433m_896709213552655636=
6m_1627725659441522800m_2125241640333008915m_399880005603669064m_-426792735=
4475654337m_7611252690734340973m_-8027753483278646055m_-7216969507367670579=
HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977=
509334027439861m_-3148426612084602578m_-1305972213606089458m_59582716346593=
00202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_57950=
49304399192415m_5254634956991466343m_-2674056437811472753m_8854484427495934=
432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-42785=
46449998113862m_8639408421370773110m_8706942729204879127m_-1279322636548333=
820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_-643=
408823540767484m_5332274037928118056m_4177746047818211183m_-608796161542894=
190m_696673799268915122m_6553687040819910946m_115938388387323268m_476161635=
2644549434m_-3513777754456038708m_4043923721510201449m_8439076215260255433m=
_8967092135526556366m_1627725659441522800m_2125241640333008915m_39988000560=
3669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646055m_-=
7216969507367670579m_-4034653188979301100HOEnZb"><font color=3D"#888888"><s=
pan class=3D"m_4969674427463734723m_-8977509334027439861m_-3148426612084602=
578m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_451080=
5869328595129m_7353279886003186147m_5795049304399192415m_525463495699146634=
3m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_80326813=
68690692765m_-4158281573136614853m_-4278546449998113862m_863940842137077311=
0m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-648328=
6325313852626m_-1413988085184529128m_-643408823540767484m_53322740379281180=
56m_4177746047818211183m_-608796161542894190m_696673799268915122m_655368704=
0819910946m_115938388387323268m_4761616352644549434m_-3513777754456038708m_=
4043923721510201449m_8439076215260255433m_8967092135526556366m_162772565944=
1522800m_2125241640333008915m_399880005603669064m_-4267927354475654337m_761=
1252690734340973m_-8027753483278646055m_-7216969507367670579m_-403465318897=
9301100m_3265050832794637623m_-8010105586882046680m_9060476606028596242m_-8=
975400041455860880HOEnZb"><font color=3D"#888888"><span class=3D"m_49696744=
27463734723m_-8977509334027439861m_-3148426612084602578m_-13059722136060894=
58m_5958271634659300202m_2950671603987798537m_4510805869328595129m_73532798=
86003186147m_5795049304399192415m_5254634956991466343m_-2674056437811472753=
m_8854484427495934432m_4328146256894303270m_8032681368690692765m_-415828157=
3136614853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m=
_-1279322636548333820m_-6066069437904457241m_-6483286325313852626m_-1413988=
085184529128m_-643408823540767484m_5332274037928118056m_4177746047818211183=
m_-608796161542894190m_696673799268915122m_6553687040819910946m_11593838838=
7323268m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_84=
39076215260255433m_8967092135526556366m_1627725659441522800m_21252416403330=
08915m_399880005603669064m_-4267927354475654337m_7611252690734340973m_-8027=
753483278646055m_-7216969507367670579m_-4034653188979301100m_32650508327946=
37623m_-8010105586882046680m_9060476606028596242m_-8975400041455860880m_582=
9643501325435819HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427=
463734723m_-8977509334027439861m_-3148426612084602578m_-1305972213606089458=
m_5958271634659300202m_2950671603987798537m_4510805869328595129m_7353279886=
003186147m_5795049304399192415m_5254634956991466343m_-2674056437811472753m_=
8854484427495934432m_4328146256894303270m_8032681368690692765m_-41582815731=
36614853m_-4278546449998113862m_8639408421370773110m_8706942729204879127m_-=
1279322636548333820m_-6066069437904457241m_-6483286325313852626m_-141398808=
5184529128m_-643408823540767484m_5332274037928118056m_4177746047818211183m_=
-608796161542894190m_696673799268915122m_6553687040819910946m_1159383883873=
23268m_4761616352644549434m_-3513777754456038708m_4043923721510201449m_8439=
076215260255433m_8967092135526556366m_1627725659441522800m_2125241640333008=
915m_399880005603669064m_-4267927354475654337m_7611252690734340973m_-802775=
3483278646055m_-7216969507367670579m_-4034653188979301100m_3265050832794637=
623m_-8010105586882046680m_9060476606028596242m_-8975400041455860880m_58296=
43501325435819m_8572586998478864595HOEnZb"><font color=3D"#888888"><br></fo=
nt></span></font></span></font></span></font></span></font></span></div><sp=
an class=3D"m_4969674427463734723m_-8977509334027439861m_-31484266120846025=
78m_-1305972213606089458m_5958271634659300202m_2950671603987798537m_4510805=
869328595129m_7353279886003186147m_5795049304399192415m_5254634956991466343=
m_-2674056437811472753m_8854484427495934432m_4328146256894303270m_803268136=
8690692765m_-4158281573136614853m_-4278546449998113862m_8639408421370773110=
m_8706942729204879127m_-1279322636548333820m_-6066069437904457241m_-6483286=
325313852626m_-1413988085184529128m_-643408823540767484m_533227403792811805=
6m_4177746047818211183m_-608796161542894190m_696673799268915122m_6553687040=
819910946m_115938388387323268m_4761616352644549434m_-3513777754456038708m_4=
043923721510201449m_8439076215260255433m_8967092135526556366m_1627725659441=
522800m_2125241640333008915m_399880005603669064m_-4267927354475654337m_7611=
252690734340973m_-8027753483278646055m_-7216969507367670579HOEnZb"><font co=
lor=3D"#888888"><span class=3D"m_4969674427463734723m_-8977509334027439861m=
_-3148426612084602578m_-1305972213606089458m_5958271634659300202m_295067160=
3987798537m_4510805869328595129m_7353279886003186147m_5795049304399192415m_=
5254634956991466343m_-2674056437811472753m_8854484427495934432m_43281462568=
94303270m_8032681368690692765m_-4158281573136614853m_-4278546449998113862m_=
8639408421370773110m_8706942729204879127m_-1279322636548333820m_-6066069437=
904457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767484m=
_5332274037928118056m_4177746047818211183m_-608796161542894190m_69667379926=
8915122m_6553687040819910946m_115938388387323268m_4761616352644549434m_-351=
3777754456038708m_4043923721510201449m_8439076215260255433m_896709213552655=
6366m_1627725659441522800m_2125241640333008915m_399880005603669064m_-426792=
7354475654337m_7611252690734340973m_-8027753483278646055m_-7216969507367670=
579m_-4034653188979301100HOEnZb"><font color=3D"#888888"><span class=3D"m_4=
969674427463734723m_-8977509334027439861m_-3148426612084602578m_-1305972213=
606089458m_5958271634659300202m_2950671603987798537m_4510805869328595129m_7=
353279886003186147m_5795049304399192415m_5254634956991466343m_-267405643781=
1472753m_8854484427495934432m_4328146256894303270m_8032681368690692765m_-41=
58281573136614853m_-4278546449998113862m_8639408421370773110m_8706942729204=
879127m_-1279322636548333820m_-6066069437904457241m_-6483286325313852626m_-=
1413988085184529128m_-643408823540767484m_5332274037928118056m_417774604781=
8211183m_-608796161542894190m_696673799268915122m_6553687040819910946m_1159=
38388387323268m_4761616352644549434m_-3513777754456038708m_4043923721510201=
449m_8439076215260255433m_8967092135526556366m_1627725659441522800m_2125241=
640333008915m_399880005603669064m_-4267927354475654337m_7611252690734340973=
m_-8027753483278646055m_-7216969507367670579m_-4034653188979301100m_3265050=
832794637623m_-8010105586882046680m_9060476606028596242m_-89754000414558608=
80HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-89=
77509334027439861m_-3148426612084602578m_-1305972213606089458m_595827163465=
9300202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_579=
5049304399192415m_5254634956991466343m_-2674056437811472753m_88544844274959=
34432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-427=
8546449998113862m_8639408421370773110m_8706942729204879127m_-12793226365483=
33820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_-6=
43408823540767484m_5332274037928118056m_4177746047818211183m_-6087961615428=
94190m_696673799268915122m_6553687040819910946m_115938388387323268m_4761616=
352644549434m_-3513777754456038708m_4043923721510201449m_843907621526025543=
3m_8967092135526556366m_1627725659441522800m_2125241640333008915m_399880005=
603669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646055m=
_-7216969507367670579m_-4034653188979301100m_3265050832794637623m_-80101055=
86882046680m_9060476606028596242m_-8975400041455860880m_5829643501325435819=
HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977=
509334027439861m_-3148426612084602578m_-1305972213606089458m_59582716346593=
00202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_57950=
49304399192415m_5254634956991466343m_-2674056437811472753m_8854484427495934=
432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-42785=
46449998113862m_8639408421370773110m_8706942729204879127m_-1279322636548333=
820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_-643=
408823540767484m_5332274037928118056m_4177746047818211183m_-608796161542894=
190m_696673799268915122m_6553687040819910946m_115938388387323268m_476161635=
2644549434m_-3513777754456038708m_4043923721510201449m_8439076215260255433m=
_8967092135526556366m_1627725659441522800m_2125241640333008915m_39988000560=
3669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646055m_-=
7216969507367670579m_-4034653188979301100m_3265050832794637623m_-8010105586=
882046680m_9060476606028596242m_-8975400041455860880m_5829643501325435819m_=
8572586998478864595HOEnZb"><font color=3D"#888888">
</font></span></font></span></font></span></font></span></font></span></div=
></div></div><span class=3D"m_4969674427463734723m_-8977509334027439861m_-3=
148426612084602578m_-1305972213606089458m_5958271634659300202m_295067160398=
7798537m_4510805869328595129m_7353279886003186147m_5795049304399192415m_525=
4634956991466343m_-2674056437811472753m_8854484427495934432m_43281462568943=
03270m_8032681368690692765m_-4158281573136614853m_-4278546449998113862m_863=
9408421370773110m_8706942729204879127m_-1279322636548333820m_-6066069437904=
457241m_-6483286325313852626m_-1413988085184529128m_-643408823540767484m_53=
32274037928118056m_4177746047818211183m_-608796161542894190m_69667379926891=
5122m_6553687040819910946m_115938388387323268m_4761616352644549434m_-351377=
7754456038708m_4043923721510201449m_8439076215260255433m_896709213552655636=
6m_1627725659441522800m_2125241640333008915m_399880005603669064m_-426792735=
4475654337m_7611252690734340973m_-8027753483278646055m_-7216969507367670579=
HOEnZb"><font color=3D"#888888"><span class=3D"m_4969674427463734723m_-8977=
509334027439861m_-3148426612084602578m_-1305972213606089458m_59582716346593=
00202m_2950671603987798537m_4510805869328595129m_7353279886003186147m_57950=
49304399192415m_5254634956991466343m_-2674056437811472753m_8854484427495934=
432m_4328146256894303270m_8032681368690692765m_-4158281573136614853m_-42785=
46449998113862m_8639408421370773110m_8706942729204879127m_-1279322636548333=
820m_-6066069437904457241m_-6483286325313852626m_-1413988085184529128m_-643=
408823540767484m_5332274037928118056m_4177746047818211183m_-608796161542894=
190m_696673799268915122m_6553687040819910946m_115938388387323268m_476161635=
2644549434m_-3513777754456038708m_4043923721510201449m_8439076215260255433m=
_8967092135526556366m_1627725659441522800m_2125241640333008915m_39988000560=
3669064m_-4267927354475654337m_7611252690734340973m_-8027753483278646055m_-=
7216969507367670579m_-4034653188979301100HOEnZb"></span></font></span></div=
></div></div></div></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div></div></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div></div></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div></div></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div></div></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div></div></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div></div></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div></div></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div></div></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div></div></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div></div></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div></div></div></div></div></div></div></div>...<br><br>[Message =
clipped]=C2=A0=C2=A0</div><br></div>
</div><br></div>
</div><br></div>
</div><br></div>
</div></div>
</div></div>
</div></div>
</div></div>
</div></div>
</div></div>

--00000000000078b7a505856c19a5--
--00000000000078b7a805856c19a7
Content-Type: image/jpeg; 
	name="=?UTF-8?B?2YXYudmGINin2YTYtdin2YbYuSDZhdi5INij2K3YryDYudmE2YXYp9ihINin2YTYr9mK2YYuanBn?="
Content-Disposition: attachment; 
	filename="=?UTF-8?B?2YXYudmGINin2YTYtdin2YbYuSDZhdi5INij2K3YryDYudmE2YXYp9ihINin2YTYr9mK2YYuanBn?="
Content-Transfer-Encoding: base64
Content-ID: <f_hgxwwplo0>
X-Attachment-Id: f_hgxwwplo0

/9j/4AAQSkZJRgABAgAAZABkAAD/7AARRHVja3kAAQAEAAAAPAAA/+4ADkFkb2JlAGTAAAAAAf/b
AIQABgQEBAUEBgUFBgkGBQYJCwgGBggLDAoKCwoKDBAMDAwMDAwQDA4PEA8ODBMTFBQTExwbGxsc
Hx8fHx8fHx8fHwEHBwcNDA0YEBAYGhURFRofHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8f
Hx8fHx8fHx8fHx8fHx8fHx8f/8AAEQgAhQDIAwERAAIRAQMRAf/EAIIAAAAHAQEBAAAAAAAAAAAA
AAIDBAUGBwgBAAkBAQAAAAAAAAAAAAAAAAAAAAAQAAIBAgQDBQQIBAMIAwEAAAECAxEEACESBTFB
BlFhIhMHcYEyFJGhQlJiIxUIscGCM3IkFtHhkqJDU7M08HNEJREBAAAAAAAAAAAAAAAAAAAAAP/a
AAwDAQACEQMRAD8AyxngPCtcAokurmVIklleRIF0Qq7FgiVJ0oCfCKmtBgC6nACqTgBKzqwYEhlI
KkcQRngHPet43Xf9zm3XeLl7zcbnSbi5kpqcqAorQAcBgGZqhiOVaDAcr34Dle/AdqcBypwHRXAC
FcAbHC7cBXAeaNhgJb6b+lvUvX25yWm1hILW3AN3fzBvKjrwUaR4nPJRgLxi/Z9swsCs2/XZv6ZT
LFEIgf8A6zViP68BVPqJ6BdZ9GWkm4kx7ptUX926tgweNfvSRNmF7SCQOeArE6sAHPAczwHKnAeq
cBypwDrtcezyWm4LfC4+d8pTtZg0GLzg41ifUQ2gx1ppzrgE8Ihj8wTRGTUhVKHSVfk3OtOzATTf
9k9N7Dp+KHbNxuN03uXRMt+qmG3AOTReS41AUNanxVB5UwAt2j9NP03p87db3C7jbBBv2pyY7mja
mYAnwn7PhypgOXUvp3uXXwvhZy7b0rNKsk+3wNmi/bSMmpVWP0YBk6vtOnY+oLr/AE28rbM8ha0S
Y6nRCahC32tPCuA5tXT99uFjuN7FLbw221wfMXDXEqxahWixxBvjkb7KjjgB9F9P7Hu188m/bn+m
bZCQZNEcks8pJ+GJUV6d7EZYC3rHqL0R2C3WKw2iS7ZRQyywR+Y9eJMl0yYAF76tem0iGJemIp14
lZWsVGrhQ6fMqMBX/V0vp1u6STbNtsuzX9KoqTwNbO1eDIWGn2p9GAg91YXdqqPKo0SV0OrKymnH
NScAQCezADSpPDAXH+3+DoB98uT1e2iEQn5YkVXXUfFkTwwDlt3pPsPV3qncW1nO0HShV7tZUosk
kSSiIIv3dTc+QwGqumekNj2Da4du2a1js7KEeCGMACp4sx4sx5sc8A+C2OmhHDgcAmvNsinhZJUD
xsCGUgEEHIgg4DJfrT+26+2d7rf+kY2u9vZ2luNpRayQKfETDT40H3aVA7RgM/MGHEYABr2YDmfZ
gOZ4D2AlfRWwWO8Xdyt5u9vtSW0JlHnqzPN+GJVyJHOpwEw230x2zc7Lbp23QpdS3Jj3G3WH+3bA
iksbE+JiK+EjARP1B2na9k6x3Ha9oe4fbrV1Fs12As2koG8VABxORpwwEe8xu3AeDtgBoxLLgFRS
aYR20Qd2nkRRGgLMzE0UBRmxzyGAuTZfQPqTc0ikv5otuhyCx3AeSUgUGUKGOJO4M1e3ATKw/bfs
VsEa43O6lfmIbe3iX3MFmOAXp6EdIiuq4vjkaA3Rjoa5f9JRgPS+hHTRja5Av/kwaSSi9DMKcSFO
qoHbywHLL0J6NtrnzXmkvwor8pexQSoSwoGUhEZqU7T3jAUN61v0wvWbWHT9rBbwbfEILtrZVVHn
1FmACgA6AQtcBBE44BZZyzeaiQk+Y5CqBlUk0GA0p6d9Iz7ZZWVxJI638Nu0LTh2UeXJJ5pUKKCm
rmcBoTpPcnubGNLj+8qgFuGun2qYCRhRgOaBgEd5ZRutaYDFP7hPRfcek+op972yFrjp/dXluR5S
M3yjVDSJKQCqpqeqt7sBS7oQcAERSHgK4A59tvUQO8TIhAIZhQUOYOAClk7qWVhQca4A+wJW7i72
UfXgL86YYKicuGArX1pYN6k7qR923/8AAmAg+AEMAOP419uAuT9vnT6XfUs+8yoHTaoC0OoAjzpf
AGzDZotTgNMQKFZmXIaFCgak7cgTVTWuAN8kMdVPaxTLPnqQ+/AeaQIpOohQKtpehpz8Mg7cBDtn
3bfL26e2mjs2hBLaYjJ5ulmrVtQ01pxAwFW+snqBvuwyzbdtF9PbWssflwyCNG1yaqSJHMfGixrn
wOfAjAZ7LFiWYksxqWOZJPEnAdFeQwE+9Gel/wBc6wikniMlntq/MygjwlwaRg/1Z+7Aass9tUot
ffgJJaSIiIYnKPEcjzHZgJPtW9RXKiGdljuh9gn4geBFcA6YDzAEEHhgGbfNut77aLuxuVD286PD
KhzBWRSpFO8GmA+dXVfTlx031Luex3Hil2+4eEORTUgNUb+pCDgGj+BzpgJTunqFf7h0bY9LPYWU
cNkwZtxSKt5LoqEVpSclUNwHHARUMwrQ0rxwArQ/5mI/jX+OAu3p+8A0iuAr71bk8zr/AHJ+1YP/
AApgIfngOjADj+Me3Aae/bxthg6Fu78rQ3tw5BJGawjQpHvDjAXBYsulwW0MpKMalCaE5814duAU
qg4lR/iC9lftRn+XZgCdxR2sZ1U6yykUVhIPFlwbPARrpbYY9qury4MjGS5fzJA5JFKUAGomnuwF
C/uU2a/sN52+Z3Dbbc+YbSKlDGwCmTOmeqvbgKv3W72G4tttXbbCS1uobcR7pLJL5iT3AJ/NjSg8
sacqVwCjpvqJ9jlvJEsbW/F7ayWjxXkfmoolFPMRar404qcBanofb7jZbBPvT+d+kreiGaOGFmkd
tKhHVwDVFZiGFOOA0BYXSzIdCMgWgOsUNeeQwC6EgkFjwyCjsGA88Mcd4sx1MSfzSCckPOnceeAl
Wzb8ryLY3FTIuUcxNdY7D34B9LDAIrxholHav8MBhD9wDJL6q74ypoKNCj89RWFPEOyowFbnAcwH
MB21/wDYj/xD+OAs3ab/AEMp4UwEV9RZvO6yv37RF/4lwEbwHGbSBlgBI1V1cKYDZvpZtcm1+m+0
2sqGGcWmuVDkQ8pLuDmudSDTvwEyszGHZlfSJlWQ0fTQ6ewDTgF4AU6iNPDxHL/nTLKnMcsAG7YJ
BrbMBgKtpcZGtAwz5fVgK9k6q3iZLmfbtvMkaswEsjrFrpUeHUymnLLAUb639V3O+bfs8V8pS8gu
bvTDq1qkKaEFGz1EuWBP4cBVC4Bx2Lap943mw2mDKa+njt0PZ5jBSfcM8BtOHYrHa+n7bZbCIRWN
qsduABkACBWv3ic69uAX2UGhGRV4GiAdmAU2CtJNJWnhNBThkMsAqeFnkJJIjCachzrXM4AD+ZHp
niOYOpKjs4HAOFn11CHEO5RG1c5CatYieHHivvwAesOtth6f2uTcdzvIre3RCylmFXy8KovFix4U
wGdepN76V3u6mk3ZrRbXcY2kNzdQMj+WuZdJFCtl8KkmhOWAoHcRYC/uBYFzYiRhbNL8ZjB8JbvI
wCXAewArVSbmIDiWAH04CX215DGRrmVBUipP3Tnw5YBi6lvYb7fLm6hbXFJoo3CulAvP2YBrpzwH
GTUMjgLb9F/SZd409Rb9Ef0WBq2du1R8zICPEeH5a/8AMe7Aab2uPXYScaGuYJI7xw7GHPlgDdlu
GMUcZY64qxsC4HwmgyfI5YB1zU1+HlqPg+llqp9/fgG/cpfMk8heKrQmigguPw5Gi/WcAzbtZhbV
4oYVpKpWRTkrCnPLngMi+qO/NvHWFyQAIduVdvgVRRaW9Q5A75C2AigwC/Yt5vNl3qy3ez0/NWEy
zw6xVSyHgw7DwwGg+jvWb/VD+VuVxFYTtLT9NjLFSgGrzFZqFm45V5YC7dnGu3WQnUzgNUcDQccA
tS2aJSwPHM+05nAEygEkMM+Yz92A9J41FKknJVUVJPYBgGje0sNuXXu94lo9KraKpmuCD2ouS/1H
AUF1R03F1F11JfLNK+xQCN6XJCsGpp8sRhnUamFcuWAbvWjc+lrzZbG3s7hButjKIflY0KjytNG5
U0qQKYCnzgOYD2AedpW1sLfcJLq0e5vHhC7dIrgJDJrBaR1oS/hBAoRgEtzvk1y8T3LK7w10FFC1
B5GmAQXV008zSkULUFPZlgCAzDngLE9JPS3cOs9yW6uw0PT9rIFurilDK1RWKP6fEeQwGs9t2nar
W1ghhRfKgjRYUoNKKqBgAnCgC5VwDzHpoEoKfCpAHYU7Pwj4VwDTtwMW8TxUJElHooU1qOxgMA8T
OtvA87KToUtpVSjPQfCtNSktw9+AopPXS1hfyLmwlbcJZmE1JY1VJGbxaix8KqWpWlMsA1dQetPV
l/DJbbFZR26hjH+oXDrIARkTGiDxdx4YCodx6PupQ9zbzma4cl5RJkzuc2IPaTgItIksUjRyAq6m
jKciCMAKNZCa6gAO04Ca+jtnHc9dW80iRS/JRSXKwzDUHZAANI7RqqMBsXaLvymjievjyT3js5Uw
EhYjRU505ccA2xrNe3xgtlLkZMRkK+3+eAJ6j3lNkU2O3OJd4cUnuqVECn7MYP2jgK+l2xJZGluH
aaZyS7MxJJPM9uAS3Ozbc4CtCpCmvAVr2jAU36v9H3tqw3q2VprNaJcUFTGOCMacuROAqozNyAwH
Y5GdtAHjYgJmAKk0zJwB0Vveve/KRIJbkyCFFjIcM5OkBSMjngHN5bAow+bbMUppOAZmVeAPvwAa
HAO3SvTl71Hv9ns1p4Zrt9JkIJEaDN5GpyVc8BtnpPpHatn2G02zbGZbWzjEaAihYj4nYdrNUnAO
JsVLUY0Jy1fVx9mWAW29q0Z1s+QYVPChLs1OK1ywCEwldzhkAGaFWGkNyDDIE4BxZ9c0UCA+Gssg
TUmQNFB1ZCrH6sBnH1i6Wtdj6llvYbdGsdwJnZApUEufHQniAan34BnjtYTBS3CmEqvlhAAMh4ae
3AFNCp0yDg1a/wCICv8ADAQ7rfY0ZRuVuPzUoLlBzQ5Bx7DkcBEXvJnCiRidIIXIcDgLH/brebZb
+qFmt+yIJ4J4rYvwM7LVFqfvUIHfgNWXMbfMpKppoJdQMuOAMl3qQR+Ug1SyeFAopmTpGfDjgHi4
vbfpfppSh131wNMTHMs/Ns/srgIBEkty7SyMzM5LO5zLMczgDHtCvKntwCWSEgnOvfgGnebYtZOG
QSR5F1IBVkJo6tyIKk4DNfqB0Xc9M7s5CltruXY2co5DiY2zyK19+AjFosj3USRxfMO7qEhoSXJO
S5Z54C8vTz01t9pdd03WJZN0c64YBUxW1fsqK+NxWleAwFKU7cB7TgPaMBof9v8A0WlhtQ6huYv8
7ugb5YtxW2Q0FOFPMbP2UwF87SNNmhzGAUSqFYO2cL5P3djYAJLxTCJjUNlG+Vfr59mADdIvgYge
FsgSDkwPEKAeFMBywkSUySV1eY1F4sNKDSoQE1JpnnwrgIZ6y7DDuXTZuWjLyWbh3NfEEJo1W9uY
AwFJ7Joex/LUoEHji5qK1r/TxwHp1Ku6DI11L2dv+0YBM0KT2roQGMkTIg4+JTl/AYCv9/2AWypf
WwrZz9n2HPFTgG3b57qxvYbu2fy54HWSMj7ymowF9Wvr3vu47WYRZxR7iimOWZQWXzDmCqt/DATT
0y6Z6pvorS83Z5RcXMnz1zPcVARNVURVPYoyGAkW+bkd53VpkYizgXyrcHgI1PxU/FxwCu2gEMca
gUd6kjspywHZlqdJFScARPbIfEMiOOAb7y10rqUVRqhhgIX1Z0xZb9sku3XS0WVawzDjHImSuPYe
PdgKz9KehZbLfLzc93j0ttkzWtqh+FpwPG4rxVVPHvwBvqD1/u4pZ7OZrbbpa13IK6fMEGhEMjAe
Adq8fZgKx0HswHhHVgK0wC7ZtnfdN4stsjNZb2eOAAcfGwU/Ua4DZlrYLaLDbW0Jjt7SERQqAaBV
AVRwPJcBIdsYCyiU86g9la078Asc6RQiqkUPYa4BJdEiILziYaT+Dt92AFcz+ZZNXVUUGlDQ6iQO
XbgENvOIJgMgjDSaUC0XsPJF7eZwCzc7SK/26W2lXwTRsmmlPCwIOhfs/wCI9mAy/OlxsXU0ts6/
lM7RzH7JYGnt5fXgD9wjVNMqGsbfCf5e7AIrNtKzAZeWxZT2BkNPrQYBr21oLkXu1zrqglAnhryW
T4qew4CJnbVsd3t0lOpFuYxpIyZfMGVe8YDTPTXRvTG2btfPHaKkksrSJJJ4gGHELX4aHAWXuO4G
z6S84sFnuUW2hI45AiRh7FrgIptEPhDEUAo5HefhX3DPAOimsik8q/XgOKdZZu3IYADKQrU/jgE8
iardxz7MAw3FqRZhvuyEDuqARgGpdsa73ayhZdVq7N565U8umpv+PSE9hOAmm7dO7Rveyy7VuVtH
NaSJpVCo/LNKK0f3CvKmAxV5kWtWIJWuaDjT24AvWakH6MBaf7d+mZd56/j3AL+TscTXL5VrK4Mc
Q+st7sBqlY5kJLGlTTMUGAOVk0BXXQeTD4cAaQaahmDz5YBPcDPzAKqBpkX8PPAEimhgakD8uWmR
Kn4WFO7AIGGqRwSB5dMzSmXw5cSPurz4nAONhPriaN8ipowbOp4jVTNm5kcMBRvrVtzWO/G5jhLp
coshAPi8xCA2fCtMyOWAjqap7cqMkcUJOfipkfowD3e2gi6Ttf8ASdtGd+uY2juJynnXZmShPlKw
fSho3ioNNfiGAgF001pvIm3KEWt2gmju4FoFWUEvoFCRStaUOAZt5+aO3vGiA3jss7cCQxzAFfur
gNQdFXlpd7XHf3ssSrcQRSszuoAkdBqWpPHUaUwCzqTcBe7hHYQD/LbeFtowOBYZyn3vl7sAohQR
RhBx+0e0njgO1Nag5BaU9p/3YAUZ8J788B7VmR3YAiQgQSezLAJHhEu2yIPizZfaDUfwwDTZH+1c
g0MUik/4Tk31HATJGFDThUge7AYW0U4YDvlivfgNVftw2ra9j9PH3hpVN3u07yXDorylI4SY44z5
atSmbEfiwFrbXu227mZ/kbiO4ELmOUITVWHJkYBl94wDwu3wvEKDQx5cj7uGARTbdPAxaOuk8QMx
9GATMx4snDIlf9mARsoSUDijeHsyOa/zGATrC0cstK1rVSMiaih08QD2seGABBIIrlWUjQwI8Jyp
XOh46R9p+JwEM9a9sWfp6K+pQ2kqlyFNfLkBQ+H7I1FeOZOAqPaLkXVkStfEqkE5EGlK092Ad9p9
RNu6Q6eNrDt8m47jLNK/mXEp8kg6dBenibTQ+GlO/AQbed93HqPcU3HcjG1zMQ03lqI41SMBUWmf
AADtwBTGMXZJrPIf7aj4nZh4m7AO84CQ9IbdFJvti86K72cq3ZiSugNGaoGJ458csBd20RMx8x/E
yjNjzZsycA66q5fScB5yRH3VwAtWmPjWgwBUT+KpwHLj4GHbgCEbTRR8IHiOAbIYwj3VvTg2XsYZ
YCQbfciTb4ZvvDP2jI/XgMT0wHgMBIekOvurej7trrYNwe0MhHnwGjwS6f8AuRNVT7ePfgJjtPX+
87x1VP1RH/8AztxvHVpxaMyoXVQjEAk5Np1aTXAXn0t613SxxWu+WouVyHzMNEkoRWrJ8J91MBY+
0dW9M7wAtlfRmVv/AM8v5cn/AAtSvurgF09jGzVZaHt/34Bp3TbWjgeWPMKK58cs+WWAarlgSrpT
80BTXgaZitPEaVPhGASyAlgTxqPxGvFe6oHBBkOeARdZ2wvuktygK62MDug41dBq/qavPgK92Azr
s95H800SvUeMN7T4hgGTqHJCnNJWFT2HANdvFceQJVBhhrpa5YZV+6vfgD4r1YAwhOkNnJL8Tse8
nAWF6ZxGU3F0B+WWWOLmSaamJPbngLmso/JtBX4jmfacAap7+/ADmyhTsJwBUjkUA7MALy9MYNc+
eAKmYlRXAE10RMa/EQBgEdz4NyB4CZBU964Aq23a4t1ksgsekOxjLkg+I15YDJgXPAd0GlRwwHGj
1LTASzoaqRsvEiQ/WBTAWJKVWNZw2hMlZuyp8Le4nADjuZWJiufyJRQpKprG+fFT9k/hOAkex+pf
U+xSiEXTXVoB/YnBkSn4TUsvuOAuCLqjzdvHz9q1pcuoLQ61dPEPsuOfcRgGmO5RECykhVyDcFpw
IqOHhwB8hRgKEFaHP4V01zpxCJWtScyMAmlngmhubIkFzHRlOVUZSK5fZFaaRmTgMwkm0vWRvC6S
6XByOpG0Nl78Ah6v0pKrf93xAd+Av39p1vbXnQm+w3UEdxD+qU8qVVkT/wBeP7LAjAWNvHo16W7y
Ga66etUkf/rWoa2cd4MJQfVgIduHpt010dJaWOyNOY5i80kdw6yaRqFKMFU5nt7MAqlYKiqMAEMK
ezAGTt4Yx2nAAI1S040wA5WGg+3AEStSNR3k4BJd6PLhDc3FDgCtyFJIJPusAfflgGu7ZEuLjXQh
lDU7x2fTgMwEcgM8B7QVJBHZlgPGPw15YB96OZ1v5QB4NFSeQINB/HATjcNwRdsaEjzJZlKJCOJy
zY9gHM4Buserbe2gSC4RrpocmnhBZAOS6vtUwBlsbHc7t5/PjjQEUgjNGI71IXTgL8227tb20trr
Y5/1CxiURzWkjlplZRQ1Zsw/c3HAHhjMX+WBTR/ctZAVIPep4e0YAZcFaRI9vJxZOK14V5g4AiNL
oBvmFEroxNvLH4ZEHEAkk5g88BQXqP0zPsu6NfyPrt7y4keJ9JBiZvEY2AqO3ScARa9I7v1sGXZJ
baSWyRGlSWUITryFBQ/dOA0T+3jo7celOldzsb+SKSae/wDPDQkkAGFFoagZgjAWTaV+YiHErE9S
MwdUmRB78BAOpb1b3qG6kBrFARBGeVI8m+licA1zNVq92XvwHUPIYA2auqEdhJ+gYAMZOsk4Dkze
A07cAVP8K5Z0/ngEd61JLZRx1CuA7uWo2xoK0FfowEb6ileJjKFZ2Va6IxVjWgoBzwGcTprgOile
/lgOZd9cBKOifI07xq/ufKp5AP3/ADRT68BI4v0/SfnvL01GrXWleWrur24B+g+V0Dyxb6acFI0n
6sAluf0zL5n5Pjlr0VHsr4sA+dE/PfrMv+nq/OeH5s/9Ix08PmU8NKcOeAsyspkT9QREvK+EQMzG
v4CVVqf/AA4BYa6k1fHXKn88AGXTU6BWX7I4Dur3YCpPUn9WKXH60Su3VX+z5bIG1eDRq0vX68BH
vSoWo6tn/Sy7j5M+ZUaBTzVoTQvnxoMBp3081fpFzmx/zDU1ih+BfbgHmL5kQN8rQzfKn5cNkuqp
01pXAVbDr0HXXXXx6uNamtf6sB1tVc+NRXAGx/EO3AGT186L2N/DAcir78AGWuke3PAAmpROFKYB
uvtfz9t92p4+zAH3/wD6sv8AgOAYd38zzx5VPN0rorwrU4D/2Q==
--00000000000078b7a805856c19a7--

