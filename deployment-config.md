# 🦀 Mission Control Deployment Configuration for Olamide

## VPS Details
- **Host**: 87.106.65.146
- **Backend**: http://87.106.65.146:8000
- **Frontend**: http://87.106.65.146:3000  
- **Auth Token**: 71879fa30de0e0927d440b2a0ad45b00b74e7bef48bfaa1d62414c7d696484b1

## Deployment Status ✅
- ✅ Repository forked to Pajimo/openclaw-mission-control
- ✅ Local mode installation completed 
- ✅ Backend service running (FastAPI + PostgreSQL)
- ✅ Frontend service running (Next.js)
- ✅ Queue worker running (RQ + Redis)
- ✅ Systemd user services enabled for auto-start

## Services
```bash
# Check status
systemctl --user status openclaw-mission-control-backend
systemctl --user status openclaw-mission-control-frontend  
systemctl --user status openclaw-mission-control-rq-worker

# Restart services
systemctl --user restart openclaw-mission-control-backend
systemctl --user restart openclaw-mission-control-frontend
systemctl --user restart openclaw-mission-control-rq-worker
```

## Database & Redis
- PostgreSQL: Docker container (openclaw-mission-control-db-1)
- Redis: Docker container (openclaw-mission-control-redis-1)

## Next Steps for Olamide's Agent Setup
1. **Organization Setup**: Create "Pajimo Ltd" organization
2. **Agent Configuration**:
   - MideSquare (primary coordinator)
   - Rusty (systems/infrastructure)  
   - Emmanuel (content/business)
3. **Project Boards**:
   - DeckBuilder (presentation automation)
   - Faith Content (content creation)
   - LearnCyberFun (education platform)
   - Mercor (marketplace platform)
4. **Gateway Integration**: Connect VPS as primary gateway

## Live URLs
- **Mission Control UI**: http://87.106.65.146:3000
- **Backend API**: http://87.106.65.146:8000
- **Health Check**: http://87.106.65.146:8000/healthz

---

**Enterprise-grade Agent Orchestration Platform - DEPLOYED! 🚀**