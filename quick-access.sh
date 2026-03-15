#!/bin/bash
# 🦀 Quick Access Script for Olamide's Mission Control

echo "🦀 Mission Control Quick Access"
echo "=============================="
echo ""
echo "🌐 Frontend UI: http://87.106.65.146:3000"
echo "🔧 Backend API: http://87.106.65.146:8000"
echo "💚 Health Check: http://87.106.65.146:8000/healthz"
echo ""
echo "🔐 Auth Token: 71879fa30de0e0927d440b2a0ad45b00b74e7bef48bfaa1d62414c7d696484b1"
echo ""
echo "📊 Service Status:"
systemctl --user status openclaw-mission-control-backend --no-pager -l | grep "Active:"
systemctl --user status openclaw-mission-control-frontend --no-pager -l | grep "Active:"
systemctl --user status openclaw-mission-control-rq-worker --no-pager -l | grep "Active:"
echo ""
echo "🐳 Docker Containers:"
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}" | grep mission-control
echo ""
echo "🚀 Ready for Enterprise Agent Orchestration!"