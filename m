X-GM-THRID: 6333564205641236480
X-Received: by 10.129.91.136 with SMTP id p130mr1965319ywb.61.1474647830621;
        Fri, 23 Sep 2016 09:23:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.234 with SMTP id 103ls6676138iom.0.gmail; Fri, 23 Sep
 2016 09:23:48 -0700 (PDT)
X-Received: by 10.66.41.114 with SMTP id e18mr1826754pal.37.1474647828797;
        Fri, 23 Sep 2016 09:23:48 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id 7si2476366pfw.1.2016.09.23.09.23.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Sep 2016 09:23:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id wk8so41632454pab.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Sep 2016 09:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=Hva4sCX1+o+AXU/CtPgCzCGTP3Eo6RDK8cvfyp563gE=;
        b=SxQHa4JHiqCMrQCVTU1ejNwCsm9KNx7vw3D4xQ73X82f70nMhAtgtwy3jlu3/Dxq/9
         hXYcRjLQxxiEEB6CWl9dNTVVox5yHYoqeDAShMuGTJNUUQLYtt2CcGGgd9S4mGvDPWok
         AFTbS+qPqDF3L0zx1CkFnkQoISUUls1cjobkZLZtIypAwLHBCrxZq2h2wOwPbKX+HorJ
         UMnfJFAK+2INeRwVvuqtIQcI37qhL2kUHJS7bS0/jHf0KCYM0+mQuVdxyU73JVk+Pyft
         4WuNHWZUvKNY1C+l2FQK0QswBAQaTmInSUzVu7IfG00ZbbmaNrwVi/+xLAoXgKmRVFQR
         80rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=Hva4sCX1+o+AXU/CtPgCzCGTP3Eo6RDK8cvfyp563gE=;
        b=IFXBQDjJ+K2kvtvR279sKTrgzheDBsf1bzkv6koJtS3Kz6+r3EUUgthmPc/pu0UEKG
         joev3a5+mMIiJzjetwxUnCsxEIIflxam7tAwVKOGHXhVyD491mohPaK96M2liuUO3AT2
         8DWRQ7Y7zweRg/jvqaCIOa5pNIQ/qPotcDPq0pgfVT0eMholmpvqpX4E+sw6PHdH/p1B
         PpZOqsJ8s8+7DVmqN/QHBMteqbJOGgpVU1ylUiCncGZeySUHikJqxozniMRt1LSqxqeF
         7OXMV/q5SU6SbZx9t5qp5t4cx2+h0/XpjhZHIf2iAr0gESPad6lYWHkSi2K9+qFQhtd2
         tWsA==
X-Gm-Message-State: AE9vXwMyKGOyFFqo+mTpVChp8aTyvi0bub5RxddnEHcWeBEfJAChoHKKNH8gUg7B4xR3bg==
X-Received: by 10.66.249.134 with SMTP id yu6mr14010502pac.44.1474647828452;
        Fri, 23 Sep 2016 09:23:48 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id e21sm12620244pfb.96.2016.09.23.09.23.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Sep 2016 09:23:48 -0700 (PDT)
Date: Fri, 23 Sep 2016 09:23:47 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: bankarsandhya512@gmail.com
Cc: outreachy-kernel@googlegroups.com
Subject: claiming tasks, upstream & endianess work "OutreachyTasks" by
 sandhyabankar]
Message-ID: <20160923162346.GA6861@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: Mutt/1.5.23 (2014-03-12)

----- Forwarded message from wiki@kernelnewbies.org -----

Date: Fri, 23 Sep 2016 15:53:25 -0000
=46rom: wiki@kernelnewbies.org
To: wiki@kernelnewbies.org
Subject: [Linux Kernel Newbies] Update of "OutreachyTasks" by sandhyabankar

Dear Wiki user,

You have subscribed to a wiki page or wiki category on "Linux Kernel Newbie=
s" for change notification.

The following page has been changed by sandhyabankar:
http://kernelnewbies.org/OutreachyTasks

The comment on the change is:
updating tasks.

  =3D=3D Ongoing Tasks from round 13 =3D+  * Task name: Fix endianness warn=
ings in drivers/iio/accel/mma7660 code
+
+  * Claimed by: Sandhya Bankar
+
+  * Date claimed: 23 Sep 2016
+
+
+  * Links to patch submissions: http://marc.info/?l=3Dlinux-iio&m=14745770=
9326372&w=3D2
+  * Current status:WIP
+  * Task name: Fix endianness warnings in drivers/iio/adc/max1027 code
+
+  * Claimed by: Sandhya Bankar
+
+  * Date claimed: 23 Sep 2016
+
+
+  * Links to patch submissions: http://marc.info/?l=3Dlinux-iio&m=14746441=
7710596&w=3D2
+

Hi Sandhya,

'cc-ing outreachy group...

I see that you got your kernelnewbies access working.  Great!

The sparse warnings in these drivers were not related to Endianess,
so they don't need to be claimed here.  The IIO claims here will only be
for Coding Task 2 - IIO Endianess work.

I do see that you've submitted the patches upstream already, so you'll
need to follow up on those as needed with the IIO maintainer.

Gentle reminder - try to stick to drivers/staging/ patches.=20

The exception is for IIO Coding Task 2 Endianess issues. We are not
intending to go upstream in general.  That is, we won't go looking
for sparse and checkpatch fixes to do upstream now.

Let me know if this isn't clear.  You are out front on some of this, so
if it's not clear to you, it probably won't be clear to others, and I
want to fix that.

Thanks,
alisons


