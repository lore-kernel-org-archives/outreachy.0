X-GM-THRID: 6210359704363728896
X-Received: by 10.112.123.17 with SMTP id lw17mr397697lbb.6.1447149707010;
        Tue, 10 Nov 2015 02:01:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.77.74 with SMTP id a71ls791015lfb.70.gmail; Tue, 10 Nov
 2015 02:01:46 -0800 (PST)
X-Received: by 10.112.209.73 with SMTP id mk9mr408956lbc.14.1447149706221;
        Tue, 10 Nov 2015 02:01:46 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id m135si73910wmb.0.2015.11.10.02.01.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Nov 2015 02:01:46 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0LxOmo-1aTUmZ0sjy-016zmD; Tue, 10 Nov
 2015 11:01:45 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Ksenija =?utf-8?B?U3Rhbm9qZXZpxIc=?= <ksenija.stanojevic@gmail.com>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Y2038] [PATCH 2/5] fs: nfsd: Replace time_t with u32 in nfsd4_lease
Date: Tue, 10 Nov 2015 11:01:44 +0100
Message-ID: <3868597.PIV5n69lhm@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAL7P5jK=pbSvFURGN55TYUfbhPedOuNyi+Rm=wRKbxxuQdnU5Q@mail.gmail.com>
References: <cover.1445960986.git.ksenija.stanojevic@gmail.com> <8412799.SPuinIILNH@wuerfel> <CAL7P5jK=pbSvFURGN55TYUfbhPedOuNyi+Rm=wRKbxxuQdnU5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Provags-ID: V03:K0:3mtTrY9ZBepNyjl7I0xLAbZwrciRIpO0yyeGn+VIVUBQwEqZz/E
 XIXbXvO0ksAptVW8ZVdiRmmMfYrFmx92l7ZXk1DEBPdpsLcA+8TbRliiDDRjy0JNf9Jgop+
 YGLAER0xTOFzC1AYobqhElTvhxLBbzmn/bN8R+xFpoR1XJK8t4WwO+/mKr6hKzvHQS4bwzu
 uJshrILyc3meJ8gmRMoFA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:xx0qqq0r2nw=:I0L1/iIkI1jm23oDvg+Of5
 PXgN2V9T+EVXH3csN9+Hh9J/+2H4NOTRPhWRlaRI7VPPCELyjZ5z/kYmQyRyKDBrrKsm1CjKz
 OPv2TWGr4lRDj9CjwjTsf/xykZUoIieNndIv62SvApXXER05miUufaCgUDRK0WDhAv+JZQzaK
 /wO11BftHu1L8PT1vp3X4uE1SpRHCqaBd+/fiJjiS/FdMCAjRt7blrOPXwNnzorhsgWBQlLXl
 ESM+wys1kb6Tg7KbwQG1DAP11b5jRd5DzY1kktycuPbaF+FzefuyOFCH9igY7uKq7NCt10hrG
 MOyXfY1OO6UQcMsXO4KwFBohZ4VhH7WposL45hCpDF6wBRquPyiVbLDe8Ju8PYWkvX/FWYlIT
 ILtkmr/dAiybdzDLJDW92YwFbC6ZaZyViGW7whAGUbIA+UrozZg3yLRMO78JRgnAMuxXtjIlO
 viPDk4dTRY0ARG2F3vugkSfaI0hVZtYvT+uMf1bKPqPS9hcxqcz0uh62kL0BXbW+rS66FDZDx
 krlGcU+6rIXt2UdM6HYohJGfIuKkPpbzATyfKqIiSbO0Rns6pu5uUdcj/WXtpx57prNJ4IXXD
 criLkS0m1gPhD3B6keto+rj+FUTcXJyF7r4EkurpWgn09POl9R90WxFs9sNhTkqwjiYOuAqyH
 mXXB+Q/9K+whed7NH8Cr5wOoxXUbgsmQYoQS4PEEkrGwEhcYM9OPNFGcoq3dCgvyAq6/+CCVz
 dHWk7kg56wK5L5Aj

On Monday 09 November 2015 20:37:22 Ksenija Stanojevi=C4=87 wrote:
> On Tue, Nov 3, 2015 at 4:14 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> > On Tuesday 27 October 2015 09:09:35 Ksenija Stanojevic wrote:
> >> Replace time_t type and get_seconds function which are not y2038 s=
afe on
> >> 32-bit systems. Function ktime_get_seconds use monotonic instead o=
f real
> >> time and therefore will not cause overflow.
> >>
> >> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> >
> > You are missing an explanation about why the u32 type is used. The
> > change to that type looks absolutely appropriate here, but it seems=

> > unrelated to what you write above.
>=20
> It' safe to assume that system will be rebooted in 136 years and 32-b=
it
> number is enough to store a monotonic time value.

Not exactly in this case: nfsd4_lease is not actually used to store
a monotonic time (which would be local to the system, starting at boot
and not shared with other systems), but instead stores a time interval
that *is* shared with other systems as a 32-bit value in
nfsd4_encode_fattr().

So in order to make it obvious to everyone what happens here, explain
that you picked this type because it matches the size on the wire proto=
col,
and also why the wire protocol is safe.

> >> diff --git a/fs/nfsd/nfs4state.c b/fs/nfsd/nfs4state.c
> >> index 8245236..4bceb878 100644
> >> --- a/fs/nfsd/nfs4state.c
> >> +++ b/fs/nfsd/nfs4state.c
> >> @@ -4332,8 +4332,8 @@ nfs4_laundromat(struct nfsd_net *nn)
> >>       struct nfs4_delegation *dp;
> >>       struct nfs4_ol_stateid *stp;
> >>       struct list_head *pos, *next, reaplist;
> >> -     time_t cutoff =3D get_seconds() - nn->nfsd4_lease;
> >> -     time_t t, new_timeo =3D nn->nfsd4_lease;
> >> +     u32 cutoff =3D ktime_get_seconds() - nn->nfsd4_lease;
> >> +     u32 t, new_timeo =3D nn->nfsd4_lease;
> >>
> >>       dprintk("NFSD: laundromat service - starting\n");
> >>       nfsd4_end_grace(nn);
> >
> > The change to "cutoff" needs to be done together with the 'cl_time'=

> > change from patch 1, and all the users of that variable.
>=20
> You commented in patch 1 that change to cl_time is unrelated to other=

> changes in that patch. Should I make a new patch which changes cl_tim=
e
> and cutoff or do all those changes in patch 1?

Try to make it a separate patch. As you are dealing with rather complex=

stuff here, the patches should be as small as possible while being
large enough to make sense on their own. I see now that there are
also 'oo_time' and 'dl_time' in the same function that are compared to
'cutoff'. I would try changing all four of these in one patch at first,=

and then see if that patch is simple enough to still be explained
easily.

> >> diff --git a/fs/nfsd/nfsctl.c b/fs/nfsd/nfsctl.c
> >> index 9690cb4..6e0cfd6 100644
> >> --- a/fs/nfsd/nfsctl.c
> >> +++ b/fs/nfsd/nfsctl.c
> >> @@ -932,7 +932,7 @@ static ssize_t write_maxconn(struct file *file=
, char *buf, size_t size)
> >>
> >>  #ifdef CONFIG_NFSD_V4
> >>  static ssize_t __nfsd4_write_time(struct file *file, char *buf, s=
ize_t size,
> >> -                               time_t *time, struct nfsd_net *nn)=

> >> +                               u32 *time, struct nfsd_net *nn)
> >>  {
> >>       char *mesg =3D buf;
> >>       int rv, i;
> >> @@ -964,7 +964,7 @@ static ssize_t __nfsd4_write_time(struct file =
*file, char *buf, size_t size,
> >>  }
> >>
> >>  static ssize_t nfsd4_write_time(struct file *file, char *buf, siz=
e_t size,
> >> -                             time_t *time, struct nfsd_net *nn)
> >> +                             u32 *time, struct nfsd_net *nn)
> >>  {
> >>       ssize_t rv;
> >
> > This function is called for both nfsd4_lease and nfsd4_grace, so by=
 changing
> > only one of the two types, you generate a compiler warning.
>=20
> Ok, so changes to nfsd4_lease and nfsd4_grace should be done in one p=
atch?

Yes, I think so. Again, try it first as a combined patch for the two an=
d then see
if the patch gets simpler or more complicated when split up.

=09Arnd

